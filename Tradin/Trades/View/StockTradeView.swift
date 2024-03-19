//
//  StockTradeView.swift
//  Tradin
//
//  Created by shaik rehman on 3/17/24.
//

import SwiftUI

struct StockTradeView: View {
    
    @State var orderTypeSelect = "Limit"
    
    let orderTypes = ["Limit", "Market", "Stop", "Stop Limit", "Trailing Stop"]
    
    var body: some View {
        VStack{
            
            Group{
                Text("Order Type")
                    .font(size: 20)
                
                Menu {
                    Picker("", selection: $orderTypeSelect){
                        ForEach(orderTypes, id: \.self){order in
                            Text(order)
                        }
                    }
                } label: {
                    HStack(spacing: 6){
                        Text(orderTypeSelect)
                            .font(size: 20)
                        Image(systemName: "chevron.down")
                            .font(size: 14)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(themeColor)
                }
                
                
            }
            
            OrderFieldsView(orderType: $orderTypeSelect)
        }
        
    }
}

#Preview {
    StockTradeView()
}
