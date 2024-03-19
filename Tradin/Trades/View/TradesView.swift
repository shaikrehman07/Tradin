//
//  TradesView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct TradesView: View {
    @State var toggleStockSelection : Int = 2
    var body: some View {
        VStack{
            HStack{
                
                Text("Stock")
                    .font(size: 18)
                    .onTapGesture {
                        toggleStockSelection = 1
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 10)
                    .textTheme(backgroundColor: toggleStockSelection == 1 ? .gray.opacity(0.25) : .white, cornerRadius: 15)
                
                Text("Options")
                    .font(size: 18)
                    .onTapGesture {
                        toggleStockSelection = 2
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 10)
                    .textTheme(backgroundColor: toggleStockSelection == 2 ? .gray.opacity(0.25) : .white, cornerRadius: 15)
            }
            
            if toggleStockSelection == 1{
                StockTradeView()
                    .padding(30)
            }
            
            if toggleStockSelection == 2{
                OptionsTradeView()
                    .padding(30)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding()
        .onAppear{
            UISegmentedControl.appearance().setTitleTextAttributes([.font: UIFont(name: fonts.medium, size: 16)!], for: .normal)
        }
    }
}

#Preview {
    TradesView()
}
