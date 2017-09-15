#
# Be sure to run `pod lib lint OnePointOnlineFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OnePointOnlineFramework'
  s.version          = '0.1.0'
  s.summary          = 'My First SDK Framework.'

  s.description      = <<-DESC
   My First SDK to take mobile surveys
                       DESC

  s.homepage         = 'https://github.com/manju3157/OnePointOnlineFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manjunath.ramesh@onepointglobal.com' => 'manjunath.ramesh@onepointglobal.com' }
  s.source           = { :git => 'https://github.com/manju3157/OnePointOnlineFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'OnePointFramework_Lite.framework'

  #s.source_files = 'OnePointOnlineFramework/Classes/**/*'
  
  s.resource_bundles = {
  'OnePointOnlineFramework' => ['OnePointOnlineFramework/Assets/OPGResourceBundle.bundle']
  }

  s.resources = "OnePointOnlineFramework/Assets/OPGResourceBundle.bundle"

  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/TestingSDK//.."/**' }

  s.xcconfig = {  'OTHER_LDFLAGS' => '-lz -ObjC' }

  s.library = 'c++', 'iconv', 'z'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
