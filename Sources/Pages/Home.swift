import Foundation
import Ignite

enum AppData: CaseIterable {
    
    case tardigradeGame
    case koletora
    case onKey
    
    var appName: String {
        switch self {
        case .tardigradeGame:
            "Tiny Hero"
        case .koletora:
            "Koletora"
        case .onKey:
            "Onkey"
        }
    }
    
    var appImage: String {
        switch self {
        case .tardigradeGame:
            "/images/tiny-hero-game.png"
        case .koletora:
            "/images/koletora.png"
        case .onKey:
            "/images/onKey.png"
        }
    }
    
    var appStoreBadge: String {
        
        switch self {
        
        case .tardigradeGame, .onKey:
            return "/images/AppStoreBadgePTBR.svg"
        default:
            return "/images/AppStoreBadgePTBREmpty.svg"

        }
        
        
//        return "/images/AppStoreBadgePTBR.svg"
    }
    
    var appQrCode: String {
        switch self {
        case .tardigradeGame:
            "/images/tiny-hero-qr-code.jpg"
        case .koletora:
            "/images/koletora-qr-code.jpg"
        case .onKey:
            "/images/onkey-qr-code.jpg"
        }
    }
    
    var appDescription: String {
        switch self {
        case .tardigradeGame:
            """
Todos podemos salvar o mundo, mesmo um pequeno tardígrado!
Vamos ajudar ele?
"""
        case .koletora:
            """
Colecionar card games é muito difícil! Quer ajuda? Conheça o Koletora! Em breve na AppStore.
"""
        case .onKey:
            """
Quer aprender música de uma forma acessível e divertida?
Dê uma chance para o OnKey!
"""
        }
    }
    
    
}



struct Home: StaticPage {
    var title = "Home"

    var greeting: String = "Olá! Eu faço interfaces mágicas nas plataformas da Apple!"
    
    var intro: String = "Sou o Técnico em Informática mais orgulhoso em ter se formado no IFSul Câmpus Charqueadas, onde eu criei meu apreço a sistemas UNIX-Like e a linguagens de programação compiladas, sigo com os meus estudos no curso de Engenharia da Computação da UFRGS."
    
    var intro2: String = "Atualmente sou desenvolvedor iOS na Apple Developer Academy, tendo atuado com SwiftUI, UIKit, SpriteKit, SceneKit, Core Graphics, Core Animation, Core Image, Combine, dentre outros vários frameworks presentes nas plataformas Apple, sempre com um enfoque na experiência do usuário. Essa ênfase em UI/UX e Motion Graphics acabou colocando o estudo de tópicos de Design na minha rotina."
    
    var intro3: String = "Já atuei no passado na área de qualidade, com ênfase em automação de testes funcionais e de testes não funcionais de performance."
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Card {
            NavigationBar(logo: "Matheus Venturini") {
                
//                Link(target: URL("https://github.com/msventurini")) {
//                    Image(systemName: "github")
//                }
                
                Link("Linkedin", target: URL("https://www.linkedin.com/in/matheus-silveira-venturini/"))
                Link("Github", target: URL("https://github.com/msventurini"))
            }
                .navigationItemAlignment(.trailing)
                .navigationBarStyle(.default)
                
        }
        .cornerRadius("2.5em")
        .margin(.vertical, "0.5em")
        .background(.ghostWhite)
        .cardStyle(.solid)


        Card {
            Text(greeting)
                .font(.body)
            Text(intro)
                .font(.body)
            Text(intro2)
                .font(.body)
            Text(intro3)
                .font(.body)
            
            
        }
        .cornerRadius("2.5em")
        .padding("1em")

        .margin(.vertical, "1em")
        .background(.ghostWhite)
        .cardStyle(.solid)
            

        
        
        
        Section {
            
            for appItem in AppData.allCases {
                Card {
                    Text(appItem.appName)
                        .font(.title1)
                        

                    Image(appItem.appImage)

                    Text(appItem.appDescription)
                        .font(.body)
                        .padding()
                    Image(appItem.appStoreBadge)
                        .margin(.vertical, "0.5em")
                    
                    Image(appItem.appQrCode)

                }
                .cardStyle(.solid)
                .background(.ghostWhite)
                
                .cornerRadius("2.5em")
                .width(4)
                .padding("1em")
                .margin("0.1em")
                .horizontalAlignment(.center)
            }

            
        }
        .width(10)
        

    
    }
}

