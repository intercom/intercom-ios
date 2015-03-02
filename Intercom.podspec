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
  s.source = {}

  s.platform = :ios, '7.0'
  s.ios.platform             = :ios, '7.0'
  s.ios.preserve_paths       = 'ios/Intercom.framework'
  s.ios.public_header_files  = 'ios/Intercom.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'ios/Intercom.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'ios/Intercom.framework'
end
