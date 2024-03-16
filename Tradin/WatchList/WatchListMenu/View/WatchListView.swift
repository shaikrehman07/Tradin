//
//  WatchListView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct WatchListView: View {
    
    let stocks = [Stock(stockName: "Apple", stockTicker: "AAPL"), Stock(stockName: "Arm Micro Devices and", stockTicker: "AMD"), Stock(stockName: "Nvidia", stockTicker: "NVDA")]
    
    var body: some View {
        
        VStack(spacing: 25){
            
            ForEach(stocks, id: \.stockTicker){ stock in
                DataCardView(stockData : stock)
                    .padding(2)
                    .listRowSeparator(.hidden)
            }
            
            if stocks.count > 10{
                NavigationLink{
                    
                }label: {
                    Text("See all")
                        .foregroundStyle(.black)
                        .padding(8)
                        .font(.custom(fonts.medium, size: 16))
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.25))
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                }
            }
        }
            
    }
}

#Preview {
    WatchListView()
}
