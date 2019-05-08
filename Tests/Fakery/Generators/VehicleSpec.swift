import Quick
import Nimble
@testable import Fakery

final class VehicleSpec: QuickSpec {
  override func spec() {
    describe("Vehicle") {
      var vehicle: Vehicle!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        vehicle = Vehicle(parser: parser)
      }

      describe("#manufacture") {
        it("returns the correct manufacture") {
          let manufacture = vehicle.manufacture()
          expect(manufacture).to(equal("Volkswagen"))
        }
      }
    }
  }
}
