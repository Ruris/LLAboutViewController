#
# Be sure to run `pod lib lint LLAboutViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LLAboutViewController'
  s.version          = '0.1.4'
  s.summary          = 'A short description of LLAboutViewController.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Ruris/LLAboutViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ruris' => 'ruris@qq.com' }
  s.source           = { :git => 'https://github.com/Ruris/LLAboutViewController.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.static_framework = true
  
  s.ios.deployment_target = '10.0'

  s.source_files = 'LLAboutViewController/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LLAboutViewController' => ['LLAboutViewController/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Masonry', '>= 1.1.0'
  s.dependency 'QMUIKit', '>= 4.1.3'
  
end
