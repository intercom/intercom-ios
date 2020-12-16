Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '9.0.0'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache 2.0", :file => "LICENSE" }
  s.authors             = {"Brian Boyle"=>"brian.boyle@intercom.io", "Mike McNamara"=>"mike.mcnamara@intercom.io", "Katherine Brennan"=>"katherine.brennan@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 10+.'
  s.frameworks          = ["Foundation", "UIKit", "Accelerate", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics", "Photos", "Accelerate", "WebKit"]
  s.library             = "icucore", "xml2"
  s.requires_arc        = true
  s.source              = :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s
  s.platform            = :ios, '10.0'
  s.preserve_paths      = 'Intercom.xcframework'
  s.vendored_frameworks = 'Intercom.xcframework'
end
