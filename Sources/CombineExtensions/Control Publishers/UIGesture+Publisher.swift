#if canImport(Combine) && canImport(UIKit)
import UIKit
import Combine

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public struct GesturePublisher<Gesture: UIGestureRecognizer>: Publisher {
    
    public typealias Output = Gesture
    public typealias Failure = Never
    
    private weak var view: UIView?
    private let gesture: Gesture
    
    init(view: UIView, gesture: Gesture) {
        self.view = view
        self.gesture = gesture
    }
    
    public func receive<S>(subscriber: S) where S: Subscriber, GesturePublisher.Failure == S.Failure, GesturePublisher.Output == S.Input {
        let subscription = GestureSubscription(subscriber: subscriber, view: view, gesture: gesture)
        subscriber.receive(subscription: subscription)
    }
    
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public class GestureSubscription<Gesture: UIGestureRecognizer, S: Subscriber>: Subscription where S.Input == Gesture, S.Failure == Never {
    
    private var subscriber: S?
    private weak var gesture: Gesture?
    private weak var view: UIView?
    
    init(subscriber: S, view: UIView?, gesture: Gesture) {
        self.subscriber = subscriber
        self.view = view
        self.gesture = gesture
        configureGesture(gesture)
    }
    
    private func configureGesture(_ gesture: Gesture) {
        gesture.addTarget(self, action: #selector(handler))
        view?.addGestureRecognizer(gesture)
    }
    
    public func request(_ demand: Subscribers.Demand) {
        
    }
    
    public func cancel() {
        if let gesture = gesture {
            view?.removeGestureRecognizer(gesture)
        }
        view = nil
        subscriber = nil
    }
    
    @objc private func handler() {
        guard let gesture = gesture else {
            return
        }
        _ = subscriber?.receive(gesture)
    }
    
}

extension UIGestureRecognizer {
    private static func createAndConfigure<T: UIGestureRecognizer>(configuration: (T) -> Void) -> T {
        let gesture: T = .init()
        configuration(gesture)
        return gesture
    }
    
    public static func tap(configuration: (UITapGestureRecognizer) -> Void = { _ in }) -> UITapGestureRecognizer {
        createAndConfigure(configuration: configuration)
    }
    
    public static func swipe(configuration: (UISwipeGestureRecognizer) -> Void = { _ in }) -> UISwipeGestureRecognizer {
        createAndConfigure(configuration: configuration)
    }
    
    public static func longPress(configuration: (UILongPressGestureRecognizer) -> Void = { _ in }) -> UILongPressGestureRecognizer { createAndConfigure(configuration: configuration)
    }
    
    public static func pan(configuration: (UIPanGestureRecognizer) -> Void = { _ in }) -> UIPanGestureRecognizer {
        createAndConfigure(configuration: configuration)
    }
    
    public static func pinch(configuration: (UIPinchGestureRecognizer) -> Void = { _ in }) -> UIPinchGestureRecognizer {
        createAndConfigure(configuration: configuration)
    }
    
    public static func edge(configuration: (UIScreenEdgePanGestureRecognizer) -> Void = { _ in }) -> UIScreenEdgePanGestureRecognizer {
        createAndConfigure(configuration: configuration)
    }
}

extension UIView {
    
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func gesture<T: UIGestureRecognizer>(_ gesture: T) -> GesturePublisher<T> {
        GesturePublisher(view: self, gesture: gesture)
    }
    
}
#endif
