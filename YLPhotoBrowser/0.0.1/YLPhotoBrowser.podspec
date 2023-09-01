#
# Be sure to run `pod lib lint YLPhotoBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLPhotoBrowser'
  s.version          = '0.0.1'
  s.summary          = '图片浏览器'
  s.homepage         = 'https://github.com/baoyanlong/YLPhotoBrowser'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baoyanlong' => '674934875@qq.com' }
  s.source           = { :git => 'git@github.com:baoyanlong/YLPhotoBrowser', :tag => s.version.to_s }
  
  s.swift_version    = '5.0'
  
  s.ios.deployment_target = '10.0'

  s.source_files = 'YLPhotoBrowser/Classes/**/*'
  
  s.resource_bundles = {
    'CJFiles' => ['YLPhotoBrowser/Assets/*.xcassets']
  }
  
  s.frameworks = 'UIKit','Foundation'
  
  s.dependency 'YLPlayer'
  s.dependency 'Kingfisher', '~> 6.3.1'
  
  s.weak_frameworks = 'SwiftUI', 'Combine'
  
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
end
