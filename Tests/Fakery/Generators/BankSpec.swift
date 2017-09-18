import Quick
import Nimble
@testable import Fakery

class BankSpec: QuickSpec {

    override func spec() {
        describe("Bank") {
            var bank: Bank!

            beforeEach {
                let parser = Parser(locale: "en-TEST")
                bank = Bank(parser: parser)
            }

            describe("#name") {
                it("returns the correct text") {
                    let name = bank.name()
                    expect(name).to(equal("ABN AMRO CORPORATE FINANCE LIMITED"))
                }
            }
        }
    }
}
