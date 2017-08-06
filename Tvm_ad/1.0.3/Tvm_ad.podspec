#
# Be sure to run `pod lib lint Tvm_ad.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Tvm_ad'
  s.version          = '1.0.3'
  s.summary          = 'Tvm_ad.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yyh321/Tvm_ad'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yunhaoyu@gmail.com' => 'yuyunhao@tvmining.com' }
  s.source           = { :git => 'https://github.com/yyh321/Tvm_ad.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'Baidu' do |baidu|
    baidu.source_files = 'Tvm_ad/WFTestItem.{h,m}'
    baidu.resource_bundles = {
    'Resources' => 'Tvm_ad/baidumobadsdk.bundle'
    }
    baidu.vendored_frameworks = [
    'Tvm_ad/BaiduMobAdSDK.framework'
    ]
    baidu.preserve_paths = 'Tvm_ad/BaiduMobAdSDK.framework'
    baidu.frameworks = 'SystemConfiguration','AdSupport','CoreTelephony','CoreLocation','CoreLocation','StoreKit','CoreMotion','MessageUI','SafariServices','AVFoundation','CoreMedia'
    baidu.libraries ='c++'
    # baidu.public_header_files = 'Tvm_ad/BaiduMobAdSDK.framework/Headers/*.h'
  end

  s.subspec 'Tuia' do |tui|
    tui.source_files = 'Tvm_ad/TuiA.{h,m}'
    tui.resource_bundles = {
    'Resources' => 'Tvm_ad/TuiaAd.bundle'
    }
    tui.vendored_frameworks = [
    'Tvm_ad/TaTmSDK.framework'
    ]
    tui.preserve_paths = 'Tvm_ad/TaTmSDK.framework'
    tui.libraries ='resolv','z.1.1.3'
  end

end
