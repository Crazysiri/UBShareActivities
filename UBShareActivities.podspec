#
# Be sure to run `pod lib lint UBShareActivities.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UBShareActivities'
  s.version          = '0.1.1'
  s.summary          = 'A short description of UBShareActivities.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/crazysiri/UBShareActivities'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'crazysiri' => 'youbo@xiandanjia.com' }
  s.source           = { :git => 'https://github.com/crazysiri/UBShareActivities.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'UBShareActivities/Classes/**/*'

  s.subspec 'Wechat' do |wechat|
      wechat.source_files = 'UBShareActivities/Classes/Wechat'
      wechat.dependency 'WechatOpenSDK'
      wechat.pod_target_xcconfig = {
        'LIBRARY_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/WechatOpenSDK/**/*',
        'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
      }
       
  end
  s.subspec 'Weibo' do |weibo|
      weibo.source_files = 'UBShareActivities/Classes/Weibo'
      weibo.dependency 'Weibo_SDK'
      weibo.pod_target_xcconfig = {
        'LIBRARY_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Weibo_SDK/libWeiboSDK/',
        'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
      }
       
  end
  s.subspec 'QQ' do |qq|
      qq.source_files = 'UBShareActivities/Classes/QQ'
      qq.dependency 'TencentOpenAPI-Unofficial'
      qq.pod_target_xcconfig = {
          'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/TencentOpenAPI-Unofficial/sdk/',
          'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
      }
       
  end
  s.subspec 'System' do |sys|
      sys.source_files = 'UBShareActivities/Classes/System'
  end
  # s.resource_bundles = {
  #   'UBShareActivities' => ['UBShareActivities/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
end
