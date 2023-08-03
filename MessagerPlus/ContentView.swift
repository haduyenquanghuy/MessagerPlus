//
//  ContentView.swift
//  MessagerPlus
//
//  Created by Ha Duyen Quang Huy on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(L10n.hello)
                .foregroundColor(Color(asset: Asset.Color.carrot))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
