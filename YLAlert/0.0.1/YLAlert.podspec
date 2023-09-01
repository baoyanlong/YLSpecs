#
# Be sure to run `pod lib lint YLAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLAlert'
  s.version          = '0.0.1'
  s.summary          = '弹窗alert、提示信息toast、加载框loading'
  s.homepage         = 'https://github.com/baoyanlong/YLAlert'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baoyanlong' => '674934875@qq.com' }
  s.source           = { :git => 'git@github.com:baoyanlong/YLAlert.git', :tag => s.version.to_s }
  s.swift_version         = '5.0'
  s.ios.deployment_target = '10.0'
  
  s.source_files = 'YLAlert/Classes/**/*'
  
  s.dependency 'SnapKit', '~> 5.6.0'
  s.dependency 'YLCore', '~> 0.0.3'
  s.dependency 'KingfisherWebP', '~> 1.3.0'
  
  s.weak_frameworks = 'SwiftUI', 'Combine'
end
