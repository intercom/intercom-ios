Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '3.0.0-beta4'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache license", :file => "LICENSE" }
  s.authors             = {"Adam McCarthy"=>"adam@intercom.io", "James Treanor"=>"james@intercom.io", "Conor O'Donnell"=>"conor.donnell@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 8 and iOS 9.'
  s.frameworks          = ["Foundation", "UIKit", "Accelerate", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics", 'AssetsLibrary', 'CFNetwork']
  s.library             = "icucore", "xml2"
  s.requires_arc        = true
  s.source              = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s }
  s.platform            = :ios, '8.0'
  s.preserve_paths      = 'Intercom.framework'
  s.source_files        = 'Intercom.framework/Versions/A/Headers/Intercom.h'
  s.public_header_files = 'Intercom.framework/Versions/A/Headers/Intercom.h'
  s.resource            = 'Intercom.bundle'
  s.vendored_frameworks = 'Intercom.framework'
end
