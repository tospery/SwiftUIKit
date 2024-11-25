//
//  Bundle+Internal.swift
//  Pods
//
//  Created by 杨建祥 on 2024/11/25.
//

import Foundation

private class BundleFinder {}

extension Foundation.Bundle {
    static let module: Bundle = {
        let bundleName = "Resources"

        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: BundleFinder.self).resourceURL,
        ]

        for candidate in candidates {
            if let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle"),
               let bundle = Bundle(url: bundlePath) {
                return bundle
            }
        }
        
        return .main
    }()
}

