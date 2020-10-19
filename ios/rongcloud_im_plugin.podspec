#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'rongcloud_im_plugin'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  
  path = ENV['IM_SDK_PATH']
  if path
    #s.vendored_frameworks = "RongIMLib.framework"
    s.dependency 'RongCloudIM/IMLib', '4.0.3'
  else
    s.dependency 'RongCloudIM/IMLib', '4.0.3'
  end

  s.ios.deployment_target = '8.0'
  
  s.pod_target_xcconfig = {
  }
end

