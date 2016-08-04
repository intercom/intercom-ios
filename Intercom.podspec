Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '3.0.8'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache 2.0", :file => "LICENSE" }
  s.authors             = {"Adam McCarthy"=>"adam@intercom.io", "Brian Boyle"=>"brian.boyle@intercom.io", "Conor O’Donnell"=>"conor.odonnell@intercom.io", "James Treanor"=>"james@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 8 and iOS 9.'
  s.frameworks          = ["Foundation", "UIKit", "Accelerate", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics", "Photos", "Accelerate"]
  s.library             = "icucore", "xml2"
  s.requires_arc        = true
  s.source              = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s }
  s.platform            = :ios, '8.0'
  s.vendored_frameworks = 'Intercom.framework'
end
