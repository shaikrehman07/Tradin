//
//  SignUpView.swift
//  Tradin
//
//  Created by shaik rehman on 3/14/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @FocusState private var emailFocus : Bool
    @FocusState private var passwordFocus : Bool
    @FocusState private var confirmPasswordFocus : Bool
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32){
            Text("Welcome to Tradin")
                .font(.custom(fonts.medium, size: 30))
            
            VStack(spacing: 20){
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Email")
                        .font(size: 18)
                    
                    TextField("email", text: $email)
                        .font()
                        .autocorrectionDisabled()
                        .focused($emailFocus)
                        .textInputAutocapitalization(TextInputAutocapitalization.never)
                        .padding(12)
                        .textTheme(borderColor: emailFocus ? themeColor : .gray, borderWidth: 2, cornerRadius : 15)
                }
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Password")
                        .font(size: 18)
                    
                    SecureField("password", text: $password)
                        .font()
                        .autocorrectionDisabled()
                        .focused($passwordFocus)
                        .textInputAutocapitalization(TextInputAutocapitalization.never)
                        .padding(12)
                        .textTheme(borderColor: passwordFocus ? themeColor : .gray, borderWidth: 2, cornerRadius : 15)
                }
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Confirm Password")
                        .font(size: 18)
                    
                    SecureField("repeat password", text: $confirmPassword)
                        .font()
                        .autocorrectionDisabled()
                        .focused($confirmPasswordFocus)
                        .textInputAutocapitalization(TextInputAutocapitalization.never)
                        .padding(12)
                        .textTheme(borderColor: !confirmPassword.isEmpty && confirmPassword != password ? errorTextFieldBorderColor : confirmPasswordFocus ? themeColor : Color.gray, borderWidth: 2, cornerRadius : 15)
                }
                
                Button{
                    
                }label: {
                    Text("Sign up")
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
                Text("Already using?")
                    .font()
                
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    Text("Login")
                        .font()
                        .foregroundStyle(themeColor)
                }
                
            }
        }
        .navigationBarBackButtonHidden()
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    SignUpView()
}
