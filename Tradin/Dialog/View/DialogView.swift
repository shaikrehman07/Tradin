//
//  DialogView.swift
//  Tradin
//
//  Created by shaik rehman on 3/16/24.
//

import SwiftUI

struct DialogView: View {
    @Binding var dialogViewHeader : String
    @Binding var dialogViewBody : String
    @Binding var textField : Bool
    @Binding var createdWatchListName : String
    
    @Binding var dialogViewAppearance : Bool
    @Binding var dialogViewButtonText : String
    
    let onDialogButtonClick: () -> Void
    
    var body: some View {
        VStack{
            VStack(spacing: 10){
                Text(dialogViewHeader)
                    .font(.custom(fonts.medium, size: 20))
                
                if !dialogViewBody.isEmpty{
                    Text(dialogViewBody)
                        .font(.custom(fonts.regular, size: 16))
                        .padding(.vertical)
                }
                
                if textField{
                    TextField("Name", text: $createdWatchListName)
                        .font(.custom(fonts.medium, size: 16))
                        .autocorrectionDisabled()
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .overlay(RoundedRectangle(cornerRadius: 14).stroke(.gray, lineWidth: 2.0))
                        .padding()
                }
                
                HStack{
                    Button{
                        dialogViewAppearance.toggle()
                    }label: {
                        Text("Cancel")
                            .font(.custom(fonts.medium, size: 16))
                            .foregroundStyle(.black.opacity(0.75))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 8)
                    .background(.gray.opacity(0.25))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Button{
                        onDialogButtonClick()
                    }label: {
                        Text(dialogViewButtonText)
                            .font(.custom(fonts.medium, size: 16))
                            .tint(.white)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 8)
                    .background(themeColor)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: UIScreen.main.bounds.width/1.15)
            .padding(.vertical, 12)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.25).ignoresSafeArea())
    }
}

#Preview {
    DialogView(dialogViewHeader: .constant("Header"), dialogViewBody: .constant("Body"), textField: .constant(true), createdWatchListName: .constant(""), dialogViewAppearance: .constant(false), dialogViewButtonText: .constant("Create"), onDialogButtonClick: {})
}
