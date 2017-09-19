

Pod::Spec.new do |s|
  s.name             = 'OnePointOnlineFramework'
  s.version          = '0.1.1'
  s.summary          = 'My First SDK Framework.'

  s.description      = <<-DESC
   My First SDK to take mobile surveys
                       DESC

  s.homepage         = 'https://github.com/manju3157/OnePointOnlineFramework'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manjunath.ramesh@onepointglobal.com' => 'manjunath.ramesh@onepointglobal.com' }
  s.source           = { :git => 'https://github.com/manju3157/OnePointOnlineFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'OnePointFramework_Lite.framework'
  
  s.resource_bundles = {
  'OnePointOnlineFramework' => ['OnePointOnlineFramework/Assets/OPGResourceBundle.bundle']
  }

  #s.resources = "OnePointOnlineFramework/Assets/OPGResourceBundle.bundle"

  s.xcconfig = {  'OTHER_LDFLAGS' => '-lz -ObjC' }
  s.library = 'c++', 'iconv', 'z'
end
