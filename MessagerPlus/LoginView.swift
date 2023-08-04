//
//  LoginView.swift
//  MessagerPlus
//
//  Created by Ha Duyen Quang Huy on 03/08/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        VStack(spacing: 12) {
            ZStack {
                Image(asset: Asset.icMessenger)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 54, height: 54)
                    .background(Color.white)
                    .cornerRadius(12)
            }
            .frame(height: 220)
            
            TextFieldWithPlaceholder(text: $email, placeholder: L10n.Common.phoneNumberOrEmail, height: 48)
            
            TextFieldWithPlaceholder(text: $password, placeholder: L10n.Common.password, height: 48)
            
            Button(action: {
                
            }) {
                Text(L10n.Common.login)
                    .applyCustomFont(.medium(size: 16))
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .background(Color(asset: Asset.Color.darkBlue))
            .clipShape(Capsule())
            
            Text(L10n.Common.forgetPassword)
                .applyCustomFont(.medium(size: 14))
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text(L10n.Common.createAccount)
                    .applyCustomFont(.medium(size: 16))
                    .padding(.vertical, 10)
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity)
            .overlay(Capsule()
                .stroke(Color(uiColor: .separator), lineWidth: 1))
            
            Image(asset: Asset.icMetaLogo)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .offset(y: -4)
         
        }
        .padding(.horizontal, 12)
        .background(
            LinearGradient(colors: [Color(hex: "EDEDED"), Color(hex: "FFFFFF")],
                           startPoint: .bottom,
                           endPoint: .top)
        )
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environment(\.locale, .init(identifier: "vi"))
    }
}
