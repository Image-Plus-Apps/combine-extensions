import XCTest
import Combine
@testable import CombineExtensions

final class BindingTests: XCTestCase {
    
    var cancellables: Set<AnyCancellable>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        cancellables = Set()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        cancellables = nil
    }
    
    func testBindablePublishersValueOnChange() {
        let binding = Bindable(value: 1)
        var observer: Int?
        binding.$value
            .sink {
                observer = $0
            }
            .store(in: &cancellables)
        binding.value = 2
        XCTAssertEqual(2, observer)
    }
    
}
