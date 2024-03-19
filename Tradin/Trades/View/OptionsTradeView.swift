//
//  OptionsTradeView.swift
//  Tradin
//
//  Created by shaik rehman on 3/17/24.
//

import SwiftUI

struct OptionsTradeView: View {
    @State var optionType = "Calls"
    @State var expirationDate = 0
    @State var strikePrice = "500"
    
    var body: some View {
        VStack{
            HStack{
                Text("Calls")
                    .font()
                    .onTapGesture {
                        optionType = "Calls"
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .textTheme(backgroundColor: optionType == "Calls" ? themeColor.opacity(0.25) : .white, cornerRadius : 15)
                
                Text("Puts")
                    .font()
                    .onTapGesture {
                        optionType = "Puts"
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .textTheme(backgroundColor: optionType == "Puts" ? themeColor.opacity(0.25) : .white, cornerRadius : 15)
            }
            .padding(.bottom, 20)
            
            Section{
                Picker("", selection: $expirationDate){
                    ForEach(0..<6){
                        Text("\($0)")
                    }
                }
                .pickerStyle(.segmented)
                
                
            }header: {
                Text("Expiration Days:")
                    .font()
            }
            
            HStack{
                Text("Strike Price")
                    .font()
                
                TextField("", text: $strikePrice)
                    .keyboardType(.decimalPad)
                    .font()
                    .foregroundStyle(Color.black.opacity(0.65))
                    .multilineTextAlignment(.trailing)
                
                
                Text("USD")
                    .font()
            }
            .padding(.vertical, 25)
            .padding(.horizontal, 8)
            
            Button{
                
            }label: {
                Text("Buy")
                    .font()
                    .padding(.horizontal, 20)
            }
            .padding(.top, 20)
            .tint(themeColor)
            .buttonStyle(.borderedProminent)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    OptionsTradeView()
}
