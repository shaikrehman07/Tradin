//
//  HomeView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var currentListName = "Default"
    @State var watchListTouched : Bool = false
    @State var createWatchListTouched : Bool = false
    @State var createdWatchListName = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading){
                            Text("Investing")
                                .font(.custom(fonts.medium, size: 30))
                                .foregroundStyle(Color.gray)
                            
                            HStack(spacing: 0){
                                Text("$")
                                    .font(.custom(fonts.medium, size: 30))
                                Text("123456789.0")
                                    .font(.custom(fonts.medium, size: 30))
                            }
                        }
                        .padding(.horizontal, 12)
                        
                        Divider()
                        
                        VStack{
                            HStack{
                                Text("Prices")
                                    .font(.custom(fonts.medium, size: 20))
                                
                                Spacer()
                                
                                Button{
                                    withAnimation{
                                        watchListTouched.toggle()
                                    }
                                }label: {
                                    HStack(spacing: 6){
                                        Text(currentListName)
                                            .font(.custom(fonts.medium, size: 16))
                                        Image(systemName: "chevron.down")
                                            .font(.system(size: 12))
                                            .fontWeight(.medium)
                                    }
                                    .foregroundStyle(.black)
                                    .font(.custom(fonts.medium, size: 16))
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 6)
                                    .background(.gray.opacity(0.25))
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                }
                                .buttonStyle(.plain)
                                
                                Button{
                                    createWatchListTouched.toggle()
                                }label: {
                                    Image(systemName: "plus")
                                        .fontWeight(.semibold)
                                        .tint(themeColor)
                                }
                                
                                
                            }
                            
                            StockListView()
                                .padding(.vertical, 10)
                        }
                        .padding(10)
                    }
                }
                
                if createWatchListTouched{
                    DialogView(dialogViewHeader: .constant("Add WatchList"), dialogViewBody: .constant(""), textField : .constant(true), createdWatchListName: $createdWatchListName, dialogViewAppearance: $createWatchListTouched, dialogViewButtonText: .constant("Create"), onDialogButtonClick: onDialogButtonClickFunc)
                }
                
                if watchListTouched{
                    BottomSheet(watchListselected: $currentListName, watchListTouched : $watchListTouched)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    
                    NavigationLink{
                        NotificationView()
                    }label: {
                        Image(systemName: "bell")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink{
                        SearchView()
                    }label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
    
    private func onDialogButtonClickFunc(){
        print("button clicked..")
        createWatchListTouched.toggle()
    }
}

#Preview {
    HomeView()
}
