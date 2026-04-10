//
//  ContentView.swift
//  SwiftUIKit-Hi_Example
//
//  Created by 杨建祥 on 2024/11/25.
//

import SwiftUI
import SwiftUIKit_Hi

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onTapGesture {
//            let bundle = Bundle.module
//            let string = NSLocalizedString("Preview.Text.Long", bundle: bundle, comment: "")
//            print("string: \(string)")
        }
    }
}
