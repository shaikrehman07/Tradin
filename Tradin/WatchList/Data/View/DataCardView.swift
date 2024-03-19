//
//  SwiftUIView.swift
//  Tradin
//
//  Created by shaik rehman on 3/16/24.
//

import SwiftUI

struct DataCardView: View {
    let stockData : Stock
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(stockData.stockTicker)
                    .font(size: 18)
                Text(stockData.stockName)
                    .lineLimit(1)
                    .font(size: 16)
                    .frame(maxWidth : 150, alignment: .leading)
            }
            
            Spacer()
            
            //should add new view with only price
            HStack(spacing: 0){
                Text("$")
                    .font(size: 18)
                Text("170.05")
                    .font(size: 18)
            }
        }
    }
}

#Preview {
    DataCardView(stockData: Stock(stockName: "Apple", stockTicker: "AAPL"))
}
