//
//  OrderFieldsView.swift
//  Tradin
//
//  Created by shaik rehman on 3/17/24.
//

import SwiftUI

struct OrderFieldsView: View {
    @Binding var orderType : String
    
    @State var limitPrice : String = "500.0"
    @State var stockQuantity : String = "1"
    let quantities = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        VStack{
            
            if orderType == "Limit"{
                
                HStack{
                    Text("Limit Price")
                        .font(.custom(fonts.medium, size: 22))
                    
                    TextField("", text: $limitPrice).keyboardType(.decimalPad)
                        .font(.custom(fonts.medium, size: 22))
                        .foregroundStyle(Color.black.opacity(0.65))
                        .multilineTextAlignment(.trailing)
                    
                    
                    Text("USD")
                        .font(.custom(fonts.medium, size: 22))
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 8)
            }
            
            Group{
                
                HStack{
                    Text("Quantity")
                        .font(.custom(fonts.medium, size: 22))
                    
                    TextField("", text: $stockQuantity)
                        .keyboardType(.decimalPad)
                        .font(.custom(fonts.medium, size: 22))
                        .foregroundStyle(Color.black.opacity(0.65))
                        .multilineTextAlignment(.trailing)
                    
                    
                    Text("QT")
                        .font(.custom(fonts.medium, size: 22))
                }
                
                Picker("Quantity", selection: $stockQuantity){
                    ForEach(quantities, id:\.self){ qt in
                        Text(qt)
                    }
                }
                .pickerStyle(.segmented)
            }
            .padding(.horizontal, 8)
            
            
            Button{
                
            }label: {
                Text("Buy")
                    .font(.custom(fonts.medium, size: 22))
                    .padding(.horizontal, 20)
            }
            .padding(.top, 50)
            .tint(themeColor)
            .buttonStyle(.borderedProminent)
            
            
        }
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    OrderFieldsView(orderType: .constant("Limit"))
}
