//
//  SettingsView.swift
//  BrytBro
//
//  Created by DJ on 12/13/21.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://https://github.com/CandidCins")!
    
    var body: some View {
        NavigationView {
            ZStack {
                //background
                Color.theme.background
                    .ignoresSafeArea()
                
                //content
                List {
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection                        .listRowBackground(Color.theme.background.opacity(0.5))

                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    XmarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

extension SettingsView {
    
    private var swiftfulThinkingSection: some View {
        Section(content: {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This demo app was made through the teachings of SwiftfulThinking's courses on Youtue.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }.padding(.vertical)
            Link("SwiftfulThinking's Youtube", destination: youtubeURL)
        }, header: {
            Text("Swiftful Thinking")
        })
    }
    
    private var coinGeckoSection: some View {
        Section(content: {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The crypto currency data used in this app is from the free API from CoinGecko! Prices may be slightly delayed. Thank You CG!!!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }.padding(.vertical)
            Link("Visit CoinGecko", destination: coingeckoURL)
        }, header: {
            Text("Coin Gecko")
        })
    }
    
    private var developerSection: some View {
        Section(content: {
            VStack(alignment: .center) {
                Image("CandidCins")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Starting as a hobby, Devonte Addison has been programming in C++ with a passion for audio development & embedded systems. Starting in April 2021, he has transitioned into learning and devloping his iOS skills so that his talents may translate to native Apple applications. This app uses SwiftUI & is written 100% in Swift. The project's main goal was to reinforce understanding and implementations of adaptive views, multi-threading, publishers/subscribers, data persistance, Combine, CoreData & MVVM Architecture. ")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }.padding(.vertical)
            Link("DJ's GitHub", destination: personalURL)
        }, header: {
            Text("Candid Cins")
        })
    }
    
        private var applicationSection: some View {
            Section {
                Link("Terms of Service", destination: defaultURL)
                Link("Privacy Policy", destination: defaultURL)
                Link("Company Website", destination: defaultURL)
                Link("Learn More", destination: defaultURL)
            } header: {
                Text("Application")
            }

        }
    
}
