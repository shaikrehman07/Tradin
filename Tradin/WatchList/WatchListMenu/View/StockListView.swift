//
//  WatchListView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct StockListView: View {
    
    let stocks = [Stock(stockName: "Apple", stockTicker: "AAPL"), Stock(stockName: "Arm Micro Devices and", stockTicker: "AMD"), Stock(stockName: "Nvidia", stockTicker: "NVDA")]
    
    var body: some View {
        
        ForEach(stocks, id: \.stockTicker){ stock in
            DataCardView(stockData : stock)
                .padding(2)
        }
    }
}

#Preview {
    StockListView()
}
