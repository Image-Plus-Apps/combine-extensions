import XCTest
import Combine
@testable import CombineUnpack



final class CombineLatestUnpackTests: XCTestCase {
    
    var cancellables: Set<AnyCancellable>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        cancellables = Set()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        cancellables = nil
    }
    
    func testUnpack3() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int) -> Int in
                value1 + value2 + value3
            }
            .sink {
                XCTAssertEqual(3, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack4() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int) -> Int in
                value1 + value2 + value3 + value4
            }
            .sink {
                XCTAssertEqual(6, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack5() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int) -> Int in
                value1 + value2 + value3 + value4 + value5
            }
            .sink {
                XCTAssertEqual(10, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack6() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6
            }
            .sink {
                XCTAssertEqual(15, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack7() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7
            }
            .sink {
                XCTAssertEqual(21, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack8() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8
            }
            .sink {
                XCTAssertEqual(28, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack9() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9
            }
            .sink {
                XCTAssertEqual(36, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack10() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10
            }
            .sink {
                XCTAssertEqual(45, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack11() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11
            }
            .sink {
                XCTAssertEqual(55, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack12() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12
            }
            .sink {
                XCTAssertEqual(66, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack13() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13
            }
            .sink {
                XCTAssertEqual(78, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack14() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14
            }
            .sink {
                XCTAssertEqual(91, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack15() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
            @Published var value15: Int = 14
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .combineLatest(unpack.$value15)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int, value15: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14 + value15
            }
            .sink {
                XCTAssertEqual(105, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack16() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
            @Published var value15: Int = 14
            @Published var value16: Int = 15
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .combineLatest(unpack.$value15)
            .combineLatest(unpack.$value16)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int, value15: Int, value16: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14 + value15 + value16
            }
            .sink {
                XCTAssertEqual(120, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack17() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
            @Published var value15: Int = 14
            @Published var value16: Int = 15
            @Published var value17: Int = 16
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .combineLatest(unpack.$value15)
            .combineLatest(unpack.$value16)
            .combineLatest(unpack.$value17)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int, value15: Int, value16: Int, value17: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14 + value15 + value16 + value17
            }
            .sink {
                XCTAssertEqual(136, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack18() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
            @Published var value15: Int = 14
            @Published var value16: Int = 15
            @Published var value17: Int = 16
            @Published var value18: Int = 17
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .combineLatest(unpack.$value15)
            .combineLatest(unpack.$value16)
            .combineLatest(unpack.$value17)
            .combineLatest(unpack.$value18)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int, value15: Int, value16: Int, value17: Int, value18: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14 + value15 + value16 + value17 + value18
            }
            .sink {
                XCTAssertEqual(153, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack19() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
            @Published var value15: Int = 14
            @Published var value16: Int = 15
            @Published var value17: Int = 16
            @Published var value18: Int = 17
            @Published var value19: Int = 18
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .combineLatest(unpack.$value15)
            .combineLatest(unpack.$value16)
            .combineLatest(unpack.$value17)
            .combineLatest(unpack.$value18)
            .combineLatest(unpack.$value19)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int, value15: Int, value16: Int, value17: Int, value18: Int, value19: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14 + value15 + value16 + value17 + value18 + value19
            }
            .sink {
                XCTAssertEqual(171, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }

    func testUnpack20() {
        class Unpack {
            @Published var value1: Int = 0
            @Published var value2: Int = 1
            @Published var value3: Int = 2
            @Published var value4: Int = 3
            @Published var value5: Int = 4
            @Published var value6: Int = 5
            @Published var value7: Int = 6
            @Published var value8: Int = 7
            @Published var value9: Int = 8
            @Published var value10: Int = 9
            @Published var value11: Int = 10
            @Published var value12: Int = 11
            @Published var value13: Int = 12
            @Published var value14: Int = 13
            @Published var value15: Int = 14
            @Published var value16: Int = 15
            @Published var value17: Int = 16
            @Published var value18: Int = 17
            @Published var value19: Int = 18
            @Published var value20: Int = 19
        }
        
        let expectation = XCTestExpectation()
        
        let unpack = Unpack()
        unpack.$value1
            .combineLatest(unpack.$value2)
            .combineLatest(unpack.$value3)
            .combineLatest(unpack.$value4)
            .combineLatest(unpack.$value5)
            .combineLatest(unpack.$value6)
            .combineLatest(unpack.$value7)
            .combineLatest(unpack.$value8)
            .combineLatest(unpack.$value9)
            .combineLatest(unpack.$value10)
            .combineLatest(unpack.$value11)
            .combineLatest(unpack.$value12)
            .combineLatest(unpack.$value13)
            .combineLatest(unpack.$value14)
            .combineLatest(unpack.$value15)
            .combineLatest(unpack.$value16)
            .combineLatest(unpack.$value17)
            .combineLatest(unpack.$value18)
            .combineLatest(unpack.$value19)
            .combineLatest(unpack.$value20)
            .unpack()
            .map { (value1: Int, value2: Int, value3: Int, value4: Int, value5: Int, value6: Int, value7: Int, value8: Int, value9: Int, value10: Int, value11: Int, value12: Int, value13: Int, value14: Int, value15: Int, value16: Int, value17: Int, value18: Int, value19: Int, value20: Int) -> Int in
                value1 + value2 + value3 + value4 + value5 + value6 + value7 + value8 + value9 + value10 + value11 + value12 + value13 + value14 + value15 + value16 + value17 + value18 + value19 + value20
            }
            .sink {
                XCTAssertEqual(190, $0)
                expectation.fulfill()
            }
            .store(in: &cancellables)
            
        wait(for: [expectation], timeout: 60)
    }


}
