//
//  Font.swift
//  CommonUI
//
//  Created by kukuzan on 25/07/2024.
//

import UIKit
import Utilities

public enum Font: String, CaseIterable {
    case poppinBlack = "Poppins-Black"
    case poppinBlackItalic = "Poppins-BlackItalic"
    case poppinBold = "Poppins-Bold"
    case poppinBoldItalic = "Poppins-BoldItalic"
    case poppinExtraBold = "Poppins-ExtraBold"
    case poppinExtraBoldItalic = "Poppins-ExtraBoldItalic"
    case poppinExtraLight = "Poppins-ExtraLight"
    case poppinExtraLightItalic = "Poppins-ExtraLightItalic"
    case poppinItalic = "Poppins-Italic"
    case poppinLight = "Poppins-Light"
    case poppinLightItalic = "Poppins-LightItalic"
    case poppinMedium = "Poppins-Medium"
    case poppinMediumItalic = "Poppins-MediumItalic"
    case poppinRegular = "Poppins-Regular"
    case poppinSemiBold = "Poppins-SemiBold"
    case poppinSemiBoldItalic = "Poppins-SemiBoldItalic"
    case poppinThin = "Poppins-Thin"
    case poppinThinItalic = "Poppins-ThinItalic"
}

public extension Font {
    func size(_ size : CGFloat) -> UIFont {
        return UIFont(name: self.rawValue, size:  size)!
    }
    
    static func load() {
        let fonts = Bundle(for: CommonUIBundle.self)
            .urls(forResourcesWithExtension: "ttf", subdirectory: nil) ?? []
        [fonts].flatMap(id).forEach { url in
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
    }
}

class CommonUIBundle { }

public func bundle() -> Bundle {
    Bundle(for: CommonUIBundle.self)
}

public extension Bundle {
    static var commonUI: Bundle {
        Bundle(for: CommonUIBundle.self)
    }
}
