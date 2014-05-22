Pod::Spec.new do |s|
  s.name     = 'OpenTokSDK-WebRTC'
  s.version  = '2.2.0-beta-3'
  s.author   = 'TokBox'
  s.summary  = 'The OpenTok iOS SDK lets you use OpenTok video sessions in apps you build for iPad, iPhone, and iPod touch devices.'
  s.homepage = 'https://github.com/opentok/opentok-ios-sdk-webrtc/'
  s.license  = { :type => 'Apache', :file => 'LICENSE.txt' }

  s.source       = { :http => 'https://s3.amazonaws.com/mobile.goinstant.org/228a5a06-9feb-4cef-9b72-9aac6b5b5234/OpenTok-SDK.2.2.0-beta-3.tar.gz' }

  s.platform = :ios, '5.0'

  s.source_files = 'OpenTok.framework/Versions/A/Headers/*.h'
  s.resources    = 'OpenTok.framework/Versions/A/OpenTok'

  s.frameworks = 'Opentok', 'UIKit', 
                 'CoreMedia', 'CoreVideo', 'CoreAudio', 'CoreTelephony',
                 'CFNetwork', 'AVFoundation', 'SystemConfiguration', 'Security',
                 'QuartzCore', 'AudioToolbox', 'OpenGLES', 'MobileCoreServices'

  s.libraries = 'stdc++', 'z', 'sqlite3.0', 'xml2.2'

  s.xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/OpenTokSDK-WebRTC/"' }

  s.preserve_paths = 'OpenTok.framework'

  s.requires_arc = false
end