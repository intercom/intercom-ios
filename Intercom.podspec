Pod::Spec.new do |s|
  s.name              = 'Intercom'
  s.version           = '2.0.0'

  s.summary           = 'The Intercom iOS SDK, for integrating Intercom into your iOS application.'
  s.description       = <<-DESC
                        The Intercom iOS SDK currently supports iOS7. iOS8 will be supported once it's out of beta. For iOS6 support you should check version 1.9 of the SDK. 
                        DESC

  s.homepage          = 'https://github.com/intercom/intercom-ios'

  s.license           = { :type => "Apache license", :file => "LICENSE" }
  s.author            = { 'Adam McCarthy' => 'adam@intercom.io', 'Gavin Rooney' => "gavin@intercom.io", "Dale Cantwell" => "dale@intercom.io", "Ignacio Delgado" => "ignacio@intercom.io", "Roland Gropmair" => "roland@intercom.io", "James Treanor" => "james@intercom.io" }
  s.source            = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => s.version.to_s }

  s.platform          = :ios, '7.0'
  s.source_files      = 'Intercom/Intercom.h'
  s.preserve_paths    = 'Intercom/libIntercom.a'
  s.requires_arc      = true
  
  s.frameworks        = 'Foundation', 'Security', "Social"
  s.xcconfig          = { 'OTHER_LDFLAGS' => '-force_load "$(PODS_ROOT)/Intercom/Intercom/libIntercom.a"', 
                          'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/Intercom/Intercom' }
end