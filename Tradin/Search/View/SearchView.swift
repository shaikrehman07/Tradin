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
                ForEach(0..<50){ _ in
                    Text("Search..")
                }
            }
            .frame(maxWidth: .infinity)
            .searchable(text: $searchText, placement:.navigationBarDrawer(displayMode: .always))
            .autocorrectionDisabled()
        }
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .principal){
                Text("Assets")
                    .font(.custom(fonts.medium, size: 18))
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
