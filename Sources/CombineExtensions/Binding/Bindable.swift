#if canImport(Foundation)
import Foundation

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public class Bindable<T> {
    
    @Published public var value: T
    
    public init(value: T) {
        self.value = value
    }
    
}
#endif
