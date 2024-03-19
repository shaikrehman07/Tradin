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
                                .font(size: 26)
                                .foregroundStyle(.gray)
                            
                            HStack(spacing: 0){
                                Text("$")
                                    .font(size: 30)
                                Text("123456789.0")
                                    .font(size: 28)
                            }
                        }
                        .padding(.horizontal, 12)
                        
                        Divider()
                        
                        VStack{
                            HStack{
                                Text("Prices")
                                    .font(size: 18)
                                
                                Spacer()
                                
                                Button{
                                    withAnimation{
                                        watchListTouched.toggle()
                                    }
                                }label: {
                                    HStack(spacing: 6){
                                        Text(currentListName)
                                            .font()
                                        Image(systemName: "chevron.down")
                                            .font(size: 12)
                                            .fontWeight(.semibold)
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 6)
                                    .textTheme(fontSize: 16, backgroundColor: .gray.opacity(0.25), cornerRadius : 15)
                                }
                                .buttonStyle(.plain)
                                
                                Button{
                                    createWatchListTouched.toggle()
                                }label: {
                                    Image(systemName: "plus")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(themeColor)
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
