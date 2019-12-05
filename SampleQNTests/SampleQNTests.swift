import XCTest
import Quick
import Nimble
@testable import SampleQN

class SampleQNTests: QuickSpec {

    override func spec() {
        var game: Game!
        beforeEach {
            game = Game.init(num1: 3, num2: 4   )
        }
        
        describe("Input -1") {
            it("should return is invalid input") {
                expect(game.reslove(num: -1)).to(equal(GameResult.Invalid)) // What Nimble done for you
            }
        }
        
        describe("Input 0") {
            it("should return is invalid input") {
                expect(game.reslove(num: 0)).to(equal(GameResult.Invalid))
            }
        }
        
        describe("Input 6") {
            it("should return is multiple of number1") {
                expect(game.reslove(num: 6)).to(equal(GameResult.Number1))
            }
        }
        
        describe("Input 7") {
            it("should return neither of them") {
                expect(game.reslove(num: 7)).to(equal(GameResult.Neither))
            }
        }
        
        describe("Input 8") {
            it("should return is multiple of number2") {
                expect(game.reslove(num: 8)).to(equal(GameResult.Number2))
            }
        }
        
        describe("Input 12") {
            it("should return both of them") {
                expect(game.reslove(num: 12)).to(equal(GameResult.Both))
            }
        }
    }

}
