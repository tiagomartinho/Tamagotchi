import XCTest

class TamagotchiUITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    func testFeedingUseCase() {
        // Given that it Starts Hungry
        XCTAssertEqual("100", app.staticTexts["hungriness value"].label)
        XCTAssertEqual("0", app.staticTexts["fullness value"].label)

        // When I feed it
        app.buttons["Feed"].tap()

        // then It not hungry anymore
        XCTAssertEqual("99", app.staticTexts["hungriness value"].label)
        XCTAssertEqual("1", app.staticTexts["fullness value"].label)
    }
}
