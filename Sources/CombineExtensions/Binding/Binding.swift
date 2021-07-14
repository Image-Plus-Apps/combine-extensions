#if canImport(Foundation)
import Foundation

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@propertyWrapper
public struct Binding<T> {
    
    private let bindableObject: Bindable<T>
    
    public init(wrappedValue: T) {
        bindableObject = Bindable(value: wrappedValue)
    }
    
    public var projectedValue: Bindable<T> {
        bindableObject
    }
    
    public var wrappedValue: T {
        get {
            bindableObject.value
        }
        set {
            bindableObject.value = newValue
        }
    }
    
}
#endif
