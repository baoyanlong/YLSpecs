#
# Be sure to run `pod lib lint YLCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLCore'
  s.version          = '0.0.3'
  s.summary          = 'APP通用层组件'
  s.source           = { :git => 'git@github.com:baoyanlong/YLCore.git', :tag => s.version.to_s }
  s.homepage         = 'https://github.com/baoyanlong/YLCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baoyanlong' => '674934875@qq.com' }
  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  
  # 根基类
  s.subspec 'RootBase' do |ss|
      ss.source_files  = 'YLCore/Classes/RootBase/**/*'
      ss.dependency 'RTRootNavigationController', '~> 0.8.0'
      ss.dependency 'HandyJSON', '~> 5.0.2'
      ss.dependency 'YLCore/Extensions'
  end
  
  # 通用扩展、文件管理
  s.subspec 'Extensions' do |ss|
      ss.source_files  = 'YLCore/Classes/Extensions/**/*'
  end
  
  # Keychain工具
  s.subspec 'Keychain' do |ss|
      ss.source_files  = 'YLCore/Classes/Keychain/**/*'
      ss.dependency 'KeychainAccess', '~> 4.2.2'
      ss.dependency 'YLCore/Constant'
  end
  
  # AES、RSA工具
  s.subspec 'Encryption' do |ss|
      ss.source_files  = 'YLCore/Classes/Encryption/**/*'
      ss.dependency 'SwCrypt', '~> 5.1.3'
      ss.dependency 'YLCore/Extensions'
  end
  
  # App安全工具
  s.subspec 'AppSafe' do |ss|
      ss.source_files  = 'YLCore/Classes/AppSafe/**/*'
  end
  
  # 多媒体工具
  s.subspec 'MediaTools' do |ss|
      ss.source_files  = 'YLCore/Classes/MediaTools/**/*'
      ss.dependency 'YLCore/Extensions'
      ss.dependency 'YLCore/Constant'
  end
  
  # 全局配置
  s.subspec 'Constant' do |ss|
      ss.source_files  = 'YLCore/Classes/Constant/**/*'
  end
  
  # 网络请求
  s.subspec 'Networking' do |ss|
      ss.source_files  = 'YLCore/Classes/Networking/**/*'
      ss.dependency 'Alamofire', '~> 5.6.1'
      ss.dependency 'YLCore/RootBase'
  end
  
  s.dependency 'Then', '~> 3.0.0'
  s.dependency 'SnapKit', '~> 5.6.0'
end
