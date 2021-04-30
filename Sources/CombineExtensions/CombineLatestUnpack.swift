import Combine

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Publishers.CombineLatest {

    public func unpack<X1, X2, X3>() -> AnyPublisher<(X1, X2, X3), Failure> where A.Output == (X1, X2), B.Output == X3 {
        map { a, b in
            let (x1, x2) = a
            return (x1, x2, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4>() -> AnyPublisher<(X1, X2, X3, X4), Failure> where A.Output == ((X1, X2), X3), B.Output == X4 {
        map { a, b in
            let ((x1, x2), x3) = a
            return (x1, x2, x3, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5>() -> AnyPublisher<(X1, X2, X3, X4, X5), Failure> where A.Output == (((X1, X2), X3), X4), B.Output == X5 {
        map { a, b in
            let (((x1, x2), x3), x4) = a
            return (x1, x2, x3, x4, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6), Failure> where A.Output == ((((X1, X2), X3), X4), X5), B.Output == X6 {
        map { a, b in
            let ((((x1, x2), x3), x4), x5) = a
            return (x1, x2, x3, x4, x5, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7), Failure> where A.Output == (((((X1, X2), X3), X4), X5), X6), B.Output == X7 {
        map { a, b in
            let (((((x1, x2), x3), x4), x5), x6) = a
            return (x1, x2, x3, x4, x5, x6, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8), Failure> where A.Output == ((((((X1, X2), X3), X4), X5), X6), X7), B.Output == X8 {
        map { a, b in
            let ((((((x1, x2), x3), x4), x5), x6), x7) = a
            return (x1, x2, x3, x4, x5, x6, x7, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9), Failure> where A.Output == (((((((X1, X2), X3), X4), X5), X6), X7), X8), B.Output == X9 {
        map { a, b in
            let (((((((x1, x2), x3), x4), x5), x6), x7), x8) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10), Failure> where A.Output == ((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), B.Output == X10 {
        map { a, b in
            let ((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11), Failure> where A.Output == (((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), B.Output == X11 {
        map { a, b in
            let (((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12), Failure> where A.Output == ((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), B.Output == X12 {
        map { a, b in
            let ((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13), Failure> where A.Output == (((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), B.Output == X13 {
        map { a, b in
            let (((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14), Failure> where A.Output == ((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), B.Output == X14 {
        map { a, b in
            let ((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15), Failure> where A.Output == (((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), X14), B.Output == X15 {
        map { a, b in
            let (((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13), x14) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16), Failure> where A.Output == ((((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), X14), X15), B.Output == X16 {
        map { a, b in
            let ((((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13), x14), x15) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17), Failure> where A.Output == (((((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), X14), X15), X16), B.Output == X17 {
        map { a, b in
            let (((((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13), x14), x15), x16) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18), Failure> where A.Output == ((((((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), X14), X15), X16), X17), B.Output == X18 {
        map { a, b in
            let ((((((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13), x14), x15), x16), x17) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19), Failure> where A.Output == (((((((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), X14), X15), X16), X17), X18), B.Output == X19 {
        map { a, b in
            let (((((((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13), x14), x15), x16), x17), x18) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, b)
        }
        .eraseToAnyPublisher()
    }
    
    public func unpack<X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20>() -> AnyPublisher<(X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20), Failure> where A.Output == ((((((((((((((((((X1, X2), X3), X4), X5), X6), X7), X8), X9), X10), X11), X12), X13), X14), X15), X16), X17), X18), X19), B.Output == X20 {
        map { a, b in
            let ((((((((((((((((((x1, x2), x3), x4), x5), x6), x7), x8), x9), x10), x11), x12), x13), x14), x15), x16), x17), x18), x19) = a
            return (x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, b)
        }
        .eraseToAnyPublisher()
    }
    
}
