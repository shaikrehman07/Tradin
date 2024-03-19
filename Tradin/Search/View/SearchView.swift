//
//  SearchView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView{
            VStack{   
                
            }
            .searchable(text: $searchText, placement:.navigationBarDrawer(displayMode: .always))
            .autocorrectionDisabled()
        }
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .principal){
                Text("Assets")
                    .font(size: 18)
            }
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    Image(systemName: "arrow.left")
                        .foregroundStyle(themeColor)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
