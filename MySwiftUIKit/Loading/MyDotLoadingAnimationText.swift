//
//  MyDotLoadingAnimationText.swift
//  MySwiftUIKit
//
//  Created by 杨建祥 on 2024/10/21.
//

import SwiftUI
import ComposableArchitecture
import SwiftUIKit

@Reducer
struct MyDotLoadingAnimationTextReducer {
    @ObservableState
    struct State: Equatable {
    }
    
    enum Action {
    }
}

struct MyDotLoadingAnimationTextView: View {
    let store: StoreOf<MyDotLoadingAnimationTextReducer>
    
    var body: some View {
        HStack {
            DotLoadingAnimationText(text: "abc123")
                .font(.system(size: 50))
                .foregroundStyle(Color.orange)
        }
    }
}
