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
            }
            
            TradesView().tabItem {
                Image(systemName: "chart.line.uptrend.xyaxis")
                Text("Trades")
            }
            
            OrdersView().tabItem {
                Image(systemName: "doc.text.fill")
                Text("Orders")
            }
            
            AccountView().tabItem {
                Image(systemName: "person.fill")
                Text("Account")
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
