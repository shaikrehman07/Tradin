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
                    .font(size: 18)
                
                if !dialogViewBody.isEmpty{
                    Text(dialogViewBody)
                        .font()
                        .padding(.vertical)
                }
                
                if textField{
                    TextField("Name", text: $createdWatchListName)
                        .font()
                        .autocorrectionDisabled()
                        .padding([.vertical, .horizontal], 10)
                        .textTheme(borderColor: .gray, borderWidth: 2, cornerRadius : 15)
                        .padding()
                }
                
                HStack{
                    Button{
                        dialogViewAppearance.toggle()
                    }label: {
                        Text("Cancel")
                            .font()
                            .foregroundStyle(.black.opacity(0.75))
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 8)
                    .textTheme(backgroundColor: .gray.opacity(0.25), cornerRadius: 15)
                    
                    Button{
                        onDialogButtonClick()
                    }label: {
                        Text(dialogViewButtonText)
                            .font(.custom(fonts.medium, size: 16))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.vertical, 8)
                    .textTheme(backgroundColor: themeColor, cornerRadius: 15)
                }
                .padding(.horizontal)
            }
            .frame(maxWidth: UIScreen.main.bounds.width/1.15)
            .padding(.vertical, 18)
            .textTheme(backgroundColor: .white, cornerRadius: 10)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.25).ignoresSafeArea())
    }
}

#Preview {
    DialogView(dialogViewHeader: .constant("Header"), dialogViewBody: .constant("Body"), textField: .constant(true), createdWatchListName: .constant(""), dialogViewAppearance: .constant(false), dialogViewButtonText: .constant("Create"), onDialogButtonClick: {})
}
