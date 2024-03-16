//
//  LoginView.swift
//  Tradin
//
//  Created by shaik rehman on 3/13/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    @FocusState private var emailFocus : Bool
    @FocusState private var passwordFocus : Bool
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                Text("Login")
                    .font(.custom(fonts.medium, size: 50))
                
                VStack(spacing: 20){
                    
                    VStack(alignment: .leading, spacing: 6){
                        Text("Email")
                            .font(.custom(fonts.medium, size: 20))
                        
                        TextField("email", text: $email)
                            .font(.custom(fonts.medium, size: 18))
                            .autocorrectionDisabled()
                            .focused($emailFocus)
                            .textInputAutocapitalization(TextInputAutocapitalization.never)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius: 14).stroke(emailFocus ? themeColor : Color.gray, lineWidth: 2.0))
                    }
                    
                    VStack(alignment: .leading, spacing: 6){
                        Text("Password")
                            .font(.custom(fonts.medium, size: 20))
                        
                        SecureField("password", text: $password)
                            .font(.custom(fonts.medium, size: 18))
                            .autocorrectionDisabled()
                            .focused($passwordFocus)
                            .textInputAutocapitalization(TextInputAutocapitalization.never)
                            .padding(10)
                            .overlay(RoundedRectangle(cornerRadius: 14).stroke(passwordFocus ? themeColor : Color.gray, lineWidth: 2.0))
                    }
                    
                    Button{
                        
                    }label: {
                        Text("Login")
                            .font(.custom(fonts.medium, size: 20))
                            .foregroundStyle(.white)
                            .padding(10)
                            .frame(maxWidth: .infinity)
                    }
                    .background(Color(red: 33/255, green: 81/255, blue: 245/255))
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .padding(.top, 15)
                }
                
                HStack(spacing: 2){
                    
                    Text("New to Tradin?")
                        .font(.custom(fonts.medium, size: 16))
                    
                    NavigationLink{
                        SignUpView()
                    }label: {
                        Text("Create Account")
                            .font(.custom(fonts.medium, size: 16))
                            .foregroundStyle(themeColor)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
