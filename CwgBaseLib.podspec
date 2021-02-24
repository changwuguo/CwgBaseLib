#
# Be sure to run `pod lib lint CwgBaseLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CwgBaseLib'
  s.version          = '0.28.0'
  s.summary          = '这是一个简单的介绍'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
这是一个复杂的介绍，详细的信息可以写在这里
                       DESC

  s.homepage         = 'https://github.com/changwuguo/CwgBaseLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'changwuguo' => 'changwuguo@@qq.com' }
  s.source           = { :git => 'https://github.com/changwuguo/CwgBaseLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.static_framework = true
  s.ios.deployment_target = '9.0'

  s.source_files = 'CwgBaseLib/Classes/**/*.{h,m}'
  # s.vendored_frameworks = 'JhtMarquee/*.framework'

  # s.resource_bundles = {
  #   'CwgBaseLib' => ['CwgBaseLib/Assets/*.png']
  # }
  s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
  s.public_header_files = 'CwgBaseLib/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'CoreData'

  s.dependency 'MLLabel'
  s.dependency 'Masonry'
  # s.dependency 'JhtMarquee'
  s.dependency 'MJExtension'
  s.dependency 'SDWebImage'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
