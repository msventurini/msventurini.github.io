import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Meu portfolio"
    var titleSuffix = " "
    var url = URL("https://www.msventurini.github.io")
    var builtInIconsEnabled = true

    var author = "Matheus Venturini"

    var homePage = Home()
    var theme = MyTheme()
}


