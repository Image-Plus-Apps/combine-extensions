#if canImport(Combine) && canImport(UIKit)
import Combine
import UIKit

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public struct UIBarButtonItemPublisher<BarItem: UIBarButtonItem>: Publisher {
    public typealias Output = BarItem
    public typealias Failure = Never

    weak var barItem: BarItem?

    init(barItem: BarItem) {
        self.barItem = barItem
    }
    
    public func receive<S>(subscriber: S) where S: Subscriber, S.Failure == UIBarButtonItemPublisher.Failure, S.Input == UIBarButtonItemPublisher.Output {
        let subscription = UIBarButtonItemSubscription(subscriber: subscriber, barItem: barItem)
        subscriber.receive(subscription: subscription)
    }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public final class UIBarButtonItemSubscription<SubscriberType: Subscriber, BarItem: UIBarButtonItem>: Subscription where SubscriberType.Input == BarItem {
    private var subscriber: SubscriberType?
    private weak var barItem: BarItem?

    init(subscriber: SubscriberType, barItem: BarItem?) {
        self.subscriber = subscriber
        self.barItem = barItem
        barItem?.target = self
        barItem?.action = #selector(eventHandler)
    }

    public func request(_ demand: Subscribers.Demand) {
        
    }

    public func cancel() {
        subscriber = nil
    }

    @objc private func eventHandler() {
        _ = barItem.map { subscriber?.receive($0) }
    }
    
}

extension UIBarButtonItem: CombineCompatible {
    
}

extension CombineCompatible where Self: UIBarButtonItem {
    
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func tapPublisher() -> UIBarButtonItemPublisher<Self> {
        return UIBarButtonItemPublisher(barItem: self)
    }
    
}

#endif
