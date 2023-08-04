//
//  Font+.swift
//  MessagerPlus
//
//  Created by Ha Duyen Quang Huy on 04/08/2023.
//

import SwiftUI

enum TitleFontType {
    
    case medium(size: CGFloat)
    case bold(size: CGFloat)
    case regular(size: CGFloat)
    
    var font: Font {
        
        switch self {
                
            case .medium(let size):
                return .custom(Constants.FONT_NAME, size: size)
                    .weight(.medium)
            
            case .bold(size: let size):
                return .custom(Constants.FONT_NAME, size: size)
                    .weight(.bold)
                
            case .regular(size: let size):
                return .custom(Constants.FONT_NAME, size: size)
                    .weight(.regular)
        }
    }
}

extension View {
    
    func applyCustomFont(_ fontStyle: TitleFontType) -> some View {
        
        self.font(fontStyle.font)
    }
}
