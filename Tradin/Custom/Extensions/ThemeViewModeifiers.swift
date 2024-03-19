//
//  CustomExtensions.swift
//  Tradin
//
//  Created by shaik rehman on 3/18/24.
//

import SwiftUI

struct ThemeViewModifier: ViewModifier {
    
    let fontName : String
    let fontSize : CGFloat
    let borderColor: Color
    let borderWidth: CGFloat
    let cornerRadius: CGFloat
    let backgroundColor : Color

    func body(content: Content) -> some View {
        content
            .font(.custom(fontName, size: fontSize))
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(borderColor, lineWidth: borderWidth)
            )
            .background(backgroundColor)
            //.foregroundStyle(textColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
    
}

public extension View {
    
    /// Add a colored border to the background.
    func textTheme(
        fontName : String = "ClashGroteskVariable-Bold_Medium",
        fontSize : CGFloat = 16,
        backgroundColor : Color = .white,
        borderColor: Color = .white,
        borderWidth: CGFloat = 0,
        cornerRadius: CGFloat = 0) -> some View {
            modifier(ThemeViewModifier(fontName: fontName, fontSize: fontSize, borderColor: borderColor, borderWidth: borderWidth, cornerRadius: cornerRadius, backgroundColor: backgroundColor))
    }
    
}


struct FontTheme : ViewModifier{
    let fontSize : CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom("ClashGroteskVariable-Bold_Medium", size: fontSize))
    }
}

public extension View{
    func font(size : CGFloat = 16) -> some View{
        modifier(FontTheme(fontSize: size))
    }
}
