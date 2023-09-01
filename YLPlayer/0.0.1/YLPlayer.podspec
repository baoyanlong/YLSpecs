#
# Be sure to run `pod lib lint YLPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLPlayer'
  s.version          = '0.0.1'
  s.summary          = '视频服务'
  s.homepage         = 'https://github.com/baoyanlong/YLPlayer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baoyanlong' => '674934875@qq.com' }
  s.source           = { :git => 'git@github.com:baoyanlong/YLPlayer.git', :tag => s.version.to_s }
  s.swift_version         = '5.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'YLPlayer/Classes/**/*'
  
  s.dependency 'YLCore', '~> 0.0.3'
  s.dependency 'KVOController'
end
