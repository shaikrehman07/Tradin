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
                    .font(.custom(fonts.medium, size: 24))
                
                Menu {
                    Picker("", selection: $orderTypeSelect){
                                        ForEach(orderTypes, id: \.self){order in
                                            Text(order)
                                                .font(.custom(fonts.semibold, size: 20))
                                        }
                                    }
                } label: {
                    HStack{
                        Text(orderTypeSelect)
                            .font(.custom(fonts.medium, size: 25))
                        Image(systemName: "chevron.down")
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(themeColor)
                }
                
                
            }
            
            OrderFieldsView(orderType: $orderTypeSelect)
        }
        .padding(.vertical)
        .onAppear{
            UISegmentedControl.appearance().setTitleTextAttributes([.font: UIFont(name: fonts.medium, size: 18)!], for: .normal)
        }
    }
}

#Preview {
    StockTradeView()
}
