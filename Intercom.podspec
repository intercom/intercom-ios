Pod::Spec.new do |s|
  s.name               = 'Intercom'
  s.version            = '2.0.5'

  s.summary            = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.description        = <<-DESC
                         The Intercom iOS SDK currently supports iOS 7.X and iOS 8. For iOS6 support you should check version 1.9 of the SDK. 
                         DESC

  s.homepage           = 'https://github.com/intercom/intercom-ios'

  s.license            = { :type => "Apache license", :file => "LICENSE" }
  s.author             = { 'Adam McCarthy' => 'adam@intercom.io', 'Gavin Rooney' => "gavin@intercom.io", "Dale Cantwell" => "dale@intercom.io", "Ignacio Delgado" => "ignacio@intercom.io", "Roland Gropmair" => "roland@intercom.io", "James Treanor" => "james@intercom.io" }
  s.source             = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s }

  s.platform           = :ios, '7.0'
  s.source_files       = 'Intercom/Intercom.h'
  s.vendored_libraries = ['Intercom/libIntercom.a']
  s.requires_arc       = true
  
  s.frameworks         = 'Foundation', 'UIKit', 'Security', "SystemConfiguration", "MobileCoreServices", "ImageIO", "AVFoundation", "QuartzCore", "CoreGraphics"
end