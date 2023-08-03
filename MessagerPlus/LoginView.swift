//
//  LoginView.swift
//  MessagerPlus
//
//  Created by Ha Duyen Quang Huy on 03/08/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Text(L10n.hello)
            .foregroundColor(Color(asset: Asset.Color.carrot))
        //            .foregroundColor(Color(asset: Asset.accentColor.color))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environment(\.locale, .init(identifier: "vi"))
    }
}
