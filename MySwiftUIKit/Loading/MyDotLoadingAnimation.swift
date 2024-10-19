//
//  MyDotLoadingAnimation.swift
//  MySwiftUIKit
//
//  Created by 杨建祥 on 2024/10/20.
//

import SwiftUI
import ComposableArchitecture
import SwiftUIKit

@Reducer
struct MyDotLoadingAnimationReducer {
    @ObservableState
    struct State: Equatable {
    }
    
    enum Action {
    }
}

struct MyDotLoadingAnimationView: View {
    let store: StoreOf<MyDotLoadingAnimationReducer>
    
    var body: some View {
        HStack {
            DotLoadingAnimation()
                .frame(.init(width: 200, height: 50))
                .foregroundStyle(Color.orange)
        }
    }
}
