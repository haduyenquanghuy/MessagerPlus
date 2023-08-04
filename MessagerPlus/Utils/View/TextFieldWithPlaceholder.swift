//
//  TextFieldWithPlaceholder.swift
//  MessagerPlus
//
//  Created by Ha Duyen Quang Huy on 04/08/2023.
//

import SwiftUI

struct TextFieldWithPlaceholder: View {
    
    @Binding var text: String
    var placeholder: String
    var height: CGFloat
    
    var body: some View {
        TextField("", text: $text)
            .font(.title2)
            .fontWeight(.medium)
            .frame(height: height)
            .foregroundColor(.pink)
            .padding(.horizontal)
            .background(
                ZStack{
                    Color.white
                    
                    if text.isEmpty {
                        HStack {
                            Text(placeholder)
                                .applyCustomFont(.regular(size: 16))
                                .foregroundColor(.black.opacity(0.4))
                                .padding(.horizontal, 12)
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color(uiColor: .separator), lineWidth: 1)
            )
    }
}

struct TextFieldWithPlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithPlaceholder(text: .constant(""), placeholder: "Số di động hoặc email", height: 52)
            .padding(.horizontal)
    }
}
