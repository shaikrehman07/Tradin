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
                    .font(size:45)
                
                VStack(spacing: 20){
                    
                    VStack(alignment: .leading, spacing: 6){
                        Text("Email")
                            .font(size: 18)
                        
                        TextField("email", text: $email)
                            .font()
                            .padding(12)
                            .autocorrectionDisabled()
                            .focused($emailFocus)
                            .textInputAutocapitalization(TextInputAutocapitalization.never)
                            .textTheme(borderColor: emailFocus ? themeColor : .gray, borderWidth: 2, cornerRadius : 15)
                    }
                    
                    VStack(alignment: .leading, spacing: 6){
                        Text("Password")
                            .font(size: 18)
                        
                        SecureField("password", text: $password)
                            .font()
                            .padding(12)
                            .autocorrectionDisabled()
                            .focused($passwordFocus)
                            .textInputAutocapitalization(TextInputAutocapitalization.never)
                            .textTheme(borderColor: .gray, borderWidth: 2, cornerRadius : 15)
                    }
                    
                    Button{
                        
                    }label: {
                        Text("Login")
                            .font()
                            .foregroundStyle(.white)
                            .padding(12)
                            .frame(maxWidth: .infinity)
                            .textTheme( backgroundColor: themeColor, cornerRadius : 15)
                        
                    }
                    .padding(.top, 15)
                    .buttonStyle(.plain)
                }
                
                HStack(spacing: 2){
                    
                    Text("New to Tradin?")
                        .font()
                    
                    NavigationLink{
                        SignUpView()
                    }label: {
                        Text("Create Account")
                            .font()
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
