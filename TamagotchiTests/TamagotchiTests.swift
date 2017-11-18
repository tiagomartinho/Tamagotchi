import XCTest
@testable import Tamagotchi

class TamagotchiTests: XCTestCase {
    
    func testWhenTamagotchiBornsIsVeryHungry() {
        let tamagotchi = Tamagotchi()
        
        XCTAssertEqual(0, tamagotchi.fullness)
        XCTAssertEqual(100, tamagotchi.hungriness)
    }
    
    func testWhenFeedingTheHungrinessDecreases() {
        let tamagotchi = Tamagotchi()
        
        tamagotchi.feed()
        
        XCTAssertEqual(99, tamagotchi.hungriness)
    }
    
    func testWhenFeedingTheFullnessIncreases() {
        let tamagotchi = Tamagotchi()
        
        tamagotchi.feed()
        
        XCTAssertEqual(1, tamagotchi.fullness)
    }
}
