//
//  FontManager.swift
//  wwdc
//
//  Created by 정현 on 2023/04/09.
//

import SwiftUI
public struct FontManager {
    public static func registerFonts() {
        registerFont(bundle: Bundle.main, fontName: "Digitalt", fontExtension: ".ttf")
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        print(Bundle.main)
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}
