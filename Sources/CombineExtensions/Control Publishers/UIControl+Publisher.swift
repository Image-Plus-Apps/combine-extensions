#if canImport(Combine) && canImport(UIKit)
import Combine
import UIKit

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public struct UIControlPublisher<Control: UIControl>: Publisher {
    public typealias Output = Control
    public typealias Failure = Never

    weak var control: Control?
    let controlEvents: UIControl.Event

    init(control: Control, events: UIControl.Event) {
        self.control = control
        self.controlEvents = events
    }
    
    public func receive<S>(subscriber: S) where S: Subscriber, S.Failure == UIControlPublisher.Failure, S.Input == UIControlPublisher.Output {
        let subscription = UIControlSubscription(subscriber: subscriber, control: control, event: controlEvents)
        subscriber.receive(subscription: subscription)
    }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public final class UIControlSubscription<SubscriberType: Subscriber, Control: UIControl>: Subscription where SubscriberType.Input == Control {
    private var subscriber: SubscriberType?
    private weak var control: Control?

    init(subscriber: SubscriberType, control: Control?, event: UIControl.Event) {
        self.subscriber = subscriber
        self.control = control
        control?.addTarget(self, action: #selector(eventHandler), for: event)
    }

    public func request(_ demand: Subscribers.Demand) {
        
    }

    public func cancel() {
        subscriber = nil
    }

    @objc private func eventHandler() {
        _ = control.map { subscriber?.receive($0) }
    }
    
}

public protocol CombineCompatible { }

extension UIControl: CombineCompatible { }

extension CombineCompatible where Self: UIControl {
    
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func publisher(for events: UIControl.Event) -> UIControlPublisher<Self> {
        return UIControlPublisher(control: self, events: events)
    }
    
}

extension UITextField {
    
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func textChangedPublisher() -> AnyPublisher<String, Never> {
        publisher(for: .editingChanged).map { $0.text ?? "" }
            .eraseToAnyPublisher()
    }
    
}
#endif
