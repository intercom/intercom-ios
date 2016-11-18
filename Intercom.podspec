Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '3.0.19'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache 2.0", :file => "Intercom/LICENSE" }
  s.authors             = {"Adam McCarthy"=>"adam@intercom.io", "Brian Boyle"=>"brian.boyle@intercom.io", "Conor O’Donnell"=>"conor.odonnell@intercom.io", "James Treanor"=>"james@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 8, iOS 9 and iOS 10'
  s.frameworks          = ["Foundation", "UIKit", "Accelerate", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics", "Photos", "Accelerate"]
  s.library             = "icucore", "xml2"
  s.requires_arc        = true
  s.source              = { :http => "https://github.com/intercom/intercom-ios/releases/download/#{s.version}/CocoaPods.zip" }
  s.platform            = :ios, '8.0'
  s.preserve_paths      = 'Intercom/Intercom.framework'
  s.public_header_files = 'Intercom/Intercom.framework/Versions/A/Headers/Intercom.h'
  s.source_files        = 'Intercom/Intercom.framework/Versions/A/Headers/Intercom.h'
  s.resource            = 'Intercom/Intercom.framework/Versions/A/Resources/Intercom.bundle'
  s.vendored_frameworks = 'Intercom/Intercom.framework'
end
