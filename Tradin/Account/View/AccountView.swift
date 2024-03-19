//
//  ProfileView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct AccountView: View {
    
    @State private var selection = 0
    
    var body: some View {
        VStack{
            VStack(spacing: 15){
                Image(systemName: "person.fill")
                    .font(size: 40)
                    .foregroundStyle(.black.opacity(0.65))
                    .padding(25)
                    .overlay(Circle().fill(.gray.opacity(0.1)))
                
                Text("Rehman Shaik")
                    .font(size: 22)
            }
            
            VStack(spacing: 25){
                TextField("", text: .constant("email@gmail.com"))
                    .font()
                    .foregroundStyle(.black.opacity(0.65))
                    .padding(12)
                    .disabled(true)
                    .textTheme(backgroundColor: .gray.opacity(0.25), cornerRadius : 15)
                
                Button{
                    print("logout.")
                }label: {
                    Text("Logout")
                        .foregroundStyle(.black.opacity(0.75))
                        .padding(12)
                        .frame(maxWidth: .infinity)
                        .textTheme(fontName: fonts.semibold, borderColor: .black.opacity(0.75), borderWidth: 2, cornerRadius : 15)
                }
                .buttonStyle(.plain)
                
                Button{
                    print("delete account.")
                }label: {
                    Text("Delete Account")
                        .foregroundStyle(.red)
                        .padding(12)
                        .frame(maxWidth: .infinity)
                        .textTheme(fontName: fonts.semibold, borderColor: .red, borderWidth: 2, cornerRadius : 15)
                    
                }
                .buttonStyle(.plain)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    AccountView()
}
