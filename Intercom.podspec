Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '2.2.3'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache license", :file => "LICENSE" }
  s.authors             = {"Adam McCarthy"=>"adam@intercom.io", "James Treanor"=>"james@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 7 and iOS 8.'
  s.frameworks          = ["Foundation", "UIKit", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics"]
  s.library             = "icucore"
  s.requires_arc        = true
  s.source              = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s }
  s.platform            = :ios, '7.0'
  s.preserve_paths      = 'Intercom.framework'
  s.public_header_files = 'Intercom.framework/Versions/A/Headers/Intercom.h'
  s.resource            = 'Intercom.framework/Versions/A/Resources/Intercom.bundle'
  s.vendored_frameworks = 'Intercom.framework'
end
