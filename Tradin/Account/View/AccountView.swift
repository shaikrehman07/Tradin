//
//  ProfileView.swift
//  Tradin
//
//  Created by shaik rehman on 3/15/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack{
            VStack(spacing: 15){
                Image(systemName: "person.fill")
                    .font(.system(size: 45))
                    .foregroundStyle(.black.opacity(0.65))
                    .padding(25)
                    .overlay(Circle().fill(.gray.opacity(0.1)))
                
                Text("Rehman Shaik")
                    .font(.custom(fonts.medium, size: 25))
            }
            
            VStack(spacing: 25){
                TextField("", text: .constant("email@gmail.com"))
                    .font(.custom(fonts.medium, size: 20))
                    .foregroundStyle(.black.opacity(0.65))
                    .padding()
                    .disabled(true)
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).fill(.gray.opacity(0.25))
                    }
                
                Button{
                    print("logout.")
                }label: {
                    Text("Logout")
                        .font(.custom(fonts.semibold, size: 20))
                        .foregroundStyle(.black.opacity(0.75))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(.black.opacity(0.75), lineWidth: 2)
                        }
                }
                
                Button{
                    print("delete account.")
                }label: {
                    Text("Delete Account")
                        .font(.custom(fonts.semibold, size: 20))
                        .foregroundStyle(.red)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(.red, lineWidth: 2)
                        }
                }
                
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
