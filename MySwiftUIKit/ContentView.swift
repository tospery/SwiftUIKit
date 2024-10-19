//
//  ContentView.swift
//  MySwiftUIKit
//
//  Created by 杨建祥 on 2024/10/20.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                loading
            }
        }
    }
    
    var loading: some View {
        Section {
            NavigationLink("DotLoadingAnimation") {
                Demo(store: Store(initialState: MyDotLoadingAnimationReducer.State()) { MyDotLoadingAnimationReducer() }) { store in
                    MyDotLoadingAnimationView(store: store)
                }
            }
        } header: {
            Text("Loading")
        }
    }
}

#Preview {
    ContentView()
}

struct Demo<State, Action, Content: View>: View {
    @SwiftUI.State var store: Store<State, Action>
    let content: (Store<State, Action>) -> Content
    
    init(
        store: Store<State, Action>,
        @ViewBuilder content: @escaping (Store<State, Action>) -> Content
    ) {
        self.store = store
        self.content = content
    }
    
    var body: some View {
        content(store)
    }
}
