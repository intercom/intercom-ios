Pod::Spec.new do |s|
  s.name = 'Intercom'
  s.version = '2.1'
  s.summary = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license = { :type => "Apache license", :file => "LICENSE" }
  s.authors = {"Adam McCarthy"=>"adam@intercom.io", "James Treanor"=>"james@intercom.io"}
  s.homepage = 'https://github.com/intercom/intercom-ios'
  s.description = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 7 and iOS 8.'
  s.frameworks = ["Foundation", "UIKit", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AVFoundation", "QuartzCore", "CoreGraphics"]
  s.requires_arc = true
  s.source = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s }
  s.platform             = :ios, '7.0'
  s.preserve_paths       = 'ios/Intercom.framework'
  s.public_header_files  = 'ios/Intercom.framework/Versions/A/Headers/Intercom.h'
  s.resources            = 'ios/Intercom.framework/Versions/A/Resources/Intercom.bundle'
  s.vendored_frameworks  = 'ios/Intercom.framework'
end
