Pod::Spec.new do |s|
  s.name     = 'Intercom'
  s.version  = '0.0.1'
  s.license  = 'Apache License, Version 2.0'
  s.summary  = 'Interom iOS Library'
  s.homepage = 'http://www.intercom.io'
  s.authors  = { 'Intercom' => 'team@intercom.io' }
  s.source   = { :git => 'https://github.com/intercom/intercom-ios.git', :tag => '1.0' }
  s.source_files = 'Intercom'
  s.requires_arc = false
  s.platform :ios, '5.0'
end