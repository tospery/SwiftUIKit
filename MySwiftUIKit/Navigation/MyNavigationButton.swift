//
//  MyNavigationButton.swift
//  MySwiftUIKit
//
//  Created by 杨建祥 on 2024/10/21.
//

import SwiftUI
import ComposableArchitecture
import SwiftUIKit

@Reducer
struct MyNavigationButtonReducer {
    @ObservableState
    struct State: Equatable {
    }
    
    enum Action {
    }
}

struct MyNavigationButtonView: View {
    let store: StoreOf<MyNavigationButtonReducer>
    
    var body: some View {
        VStack {
            NavigationButton {
                print("NavigationButton")
            } content: {
                Rectangle()
                    .frame(.init(width: 100, height: 100))
                    .foregroundStyle(Color.orange)
            }
        }
    }
}
