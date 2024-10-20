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
                navigation
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
            NavigationLink("DotLoadingAnimationText") {
                Demo(store: Store(initialState: MyDotLoadingAnimationTextReducer.State()) { MyDotLoadingAnimationTextReducer() }) { store in
                    MyDotLoadingAnimationTextView(store: store)
                }
            }
        } header: {
            Text("Loading")
        }
    }
    
    var navigation: some View {
        Section {
            NavigationLink("NavigationButton") {
                Demo(store: Store(initialState: MyNavigationButtonReducer.State()) { MyNavigationButtonReducer() }) { store in
                    MyNavigationButtonView(store: store)
                }
            }
        } header: {
            Text("Navigation")
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
