//
//  BottomTabView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct BottomTabView: View {
    
    var body: some View {
        TabView{
            HomeView().tabItem {
                Image(systemName: "house.fill")
                Text("Home")
                    .font(.custom(fonts.medium, size: 12))
            }
            
            TradesView().tabItem {
                Image(systemName: "chart.line.uptrend.xyaxis")
                Text("Trades")
            }
            
            HistoryView().tabItem {
                Image(systemName: "doc.text.fill")
                Text("Transactions")
            }
            
            AccountView().tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
        .tint(themeColor)
        .onAppear{
            UITabBarItem.appearance().setTitleTextAttributes([.font : UIFont(name: fonts.medium, size: 12)!], for: .normal)
        }
    }
}

#Preview {
    BottomTabView()
}
