Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '16.5.8'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache 2.0", :file => "Intercom.xcframework/LICENSE" }
  s.authors             = {"Brian Boyle"=>"brian.boyle@intercom.io", "Katherine Brennan"=>"katherine.brennan@intercom.io", "Niamh Coleman"=>"niamh.coleman@intercom.io", "Karthik Maharajan Skandarajah"=>"karthik.maharajanskandarajah@intercom.io", "Mike McNamara"=>"mike.mcnamara@intercom.io", "Matthew Pierce"=>"matthew.pierce@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 13+.'
  s.frameworks          = ["Foundation", "UIKit", "Accelerate", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics", "Photos", "Accelerate", "WebKit"]
  s.library             = "icucore", "xml2"
  s.requires_arc        = true
  s.source              = { :http => 'https://github.com/intercom/intercom-ios/releases/download/16.5.8/Intercom.xcframework.zip' }
  s.platform            = :ios, '13.0'
  s.preserve_paths      = 'Intercom.xcframework', 'dSYM'
  s.vendored_frameworks = 'Intercom.xcframework'
end
