Pod::Spec.new do |s|
  s.name         = 'SwiftUIKit-Hi'
  s.version      = '5.0.0-v1'
  s.summary      = 'A library providing SwiftUI extensions and utilities.'
  s.description  = <<-DESC
A Swift library designed for iOS, tvOS, watchOS, macOS, and visionOS platforms, offering useful SwiftUI extensions and utilities.
					DESC
  s.homepage     = 'https://github.com/tospery/SwiftUIKit'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source       = { :git => 'https://github.com/tospery/SwiftUIKit.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.0'
  s.ios.deployment_target = '15.0'
  s.tvos.deployment_target = '15.0'
  s.watchos.deployment_target = '8.0'
  s.osx.deployment_target = '12.0'

  s.frameworks = 'Foundation', 'UIKit', 'SwiftUI'
  s.source_files = "Sources/SwiftUIKit/**/*.{swift}"

end
