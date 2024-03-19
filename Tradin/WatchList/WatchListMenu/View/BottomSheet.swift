//
//  BottomSheet.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct BottomSheet: View {
    let watchLists = ["Default", "Stocks", "Futures", "DayTrade Stocks", "Crypto"]
    @Binding var watchListselected : String
    @Binding var watchListTouched : Bool
    
    var body: some View {
        VStack{
            
            Spacer()
            
            VStack(spacing: 4){
                
                HStack{
                    Text("WatchLists")
                        .font(size: 22)
                    
                    Spacer()
                    
                    Button{
                        watchListTouched.toggle()
                    }label: {
                        Image("close-close_symbol")
                            .fontWeight(.semibold)
                            .font(size: 20)
                    }
                    .tint(.black)
                }
                .padding(.vertical, 18)
                .padding(.horizontal, 22)
                
                ScrollView(showsIndicators: true){
                    VStack(alignment: .leading,spacing: 10){
                        ForEach(watchLists, id: \.self){ watchList in
                            HStack{
                                Text(watchList)
                                
                                Spacer()
                                
                                if watchList == watchListselected{
                                    Image("check-check_symbol")
                                        .font(size: 20)
                                        .fontWeight(.bold)
                                        .foregroundStyle(themeColor)
                                }
                            }
                                .font(size: 20)
                                .padding(10)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(watchList == watchListselected ?  RoundedRectangle(cornerRadius: 6).fill(.gray).opacity(0.15) : nil)
                                .onTapGesture{
                                    watchListselected = watchList
                                    withAnimation{
                                        watchListTouched.toggle()
                                    }
                                }
                            
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(maxHeight : UIScreen.main.bounds.height / 4, alignment: .leading)
            }
            .background(Color.white)
            .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 20, topTrailing: 20)))
        }
        .background(Color.black.opacity(0.25).ignoresSafeArea(edges : .top).onTapGesture {
            withAnimation{
                watchListTouched.toggle()
            }
        })
        
    }
}

#Preview {
    BottomSheet(watchListselected: .constant("Stocks"), watchListTouched: .constant(false))
}
