Pod::Spec.new do |s|
  s.name                = 'Intercom'
  s.version             = '5.4.0'
  s.summary             = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.license             = { :type => "Apache 2.0", :file => "Intercom/LICENSE" }
  s.authors             = {"Brian Boyle"=>"brian.boyle@intercom.io", "Dale Cantwell"=>"dale@intercom.io", "Naren Hazareesingh"=>"naren@intercom.io", "Mike McNamara"=>"mike.mcnamara@intercom.io"}
  s.homepage            = 'https://github.com/intercom/intercom-ios'
  s.description         = 'The Intercom iOS SDK, for integrating Intercom into your iOS application. The SDK supports iOS 8, 9, 10, 11 & 12.'
  s.frameworks          = ["Foundation", "UIKit", "Accelerate", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AudioToolbox", "QuartzCore", "CoreGraphics", "Photos", "Accelerate", "WebKit"]
  s.library             = "icucore", "xml2"
  s.requires_arc        = true
  s.source              = { :http => "https://github.com/intercom/intercom-ios/releases/download/#{s.version}/CocoaPods.tar.gz" }
  s.platform            = :ios, '8.0'
  s.preserve_paths      = 'Intercom/Intercom.framework'
  s.public_header_files = 'Intercom/Intercom.framework/Versions/A/Headers/Intercom.h', 'Intercom/Intercom.framework/Versions/A/Headers/ICMUserAttributes.h', 'Intercom/Intercom.framework/Versions/A/Headers/ICMCompany.h'
  s.source_files        = 'Intercom/Intercom.framework/Versions/A/Headers/Intercom.h', 'Intercom/Intercom.framework/Versions/A/Headers/ICMUserAttributes.h', 'Intercom/Intercom.framework/Versions/A/Headers/ICMCompany.h'
  s.resources           = 'Intercom/Intercom.framework/Versions/A/Resources/Intercom.bundle', 'Intercom/Intercom.framework/Versions/A/Resources/IntercomTranslations.bundle'
  s.vendored_frameworks = 'Intercom/Intercom.framework'
end
