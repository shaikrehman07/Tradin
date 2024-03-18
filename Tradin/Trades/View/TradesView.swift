//
//  TradesView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct TradesView: View {
    @State var toggleStockSelection : Int = 1
    var body: some View {
        VStack{
            HStack{
                
                Text("Stock")
                    .font(.custom(fonts.medium, size: 20))
                    .onTapGesture {
                        toggleStockSelection = 1
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 10)
                    .background(toggleStockSelection == 1 ? .gray.opacity(0.25) : .white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Text("Options")
                    .font(.custom(fonts.medium, size: 20))
                    .onTapGesture {
                        toggleStockSelection = 2
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 10)
                    .background(toggleStockSelection == 2 ? .gray.opacity(0.25) : .white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            if toggleStockSelection == 1{
                StockTradeView()
            }
            
            if toggleStockSelection == 2{
                OptionsTradeView()
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
    }
}

#Preview {
    TradesView()
}
