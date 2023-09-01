#
# Be sure to run `pod lib lint YLGeneral.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YLGeneral'
  s.version          = '0.0.1'
  s.summary          = 'APP业务通用组件'
  s.homepage         = 'https://github.com/baoyanlong/YLGeneral'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baoyanlong' => '674934875@qq.com' }
  s.source           = { :git => 'git@github.com:baoyanlong/YLGeneral.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '10.0'
  
  # 网络
  s.subspec "Networking" do |ss|
      ss.source_files  = "YLGeneral/Classes/Networking/**/*"
  end
  
  # 业务基类
  s.subspec "Base" do |ss|
      ss.source_files  = "YLGeneral/Classes/Base/**/*"
  end
  
#  s.resource_bundles = {
#      'MMGeneral' => ['MMGeneral/Assets/*.xcassets']
#  }

   s.dependency 'YLCore', '~> 0.0.3'
   s.dependency 'Kingfisher', '~> 6.3.1'
   
   s.weak_frameworks = 'SwiftUI', 'Combine'
end
