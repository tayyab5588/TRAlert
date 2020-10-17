#
# Be sure to run `pod lib lint TRAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TRAlert'
  s.version          = '0.1.0'
  s.summary          = 'Help for show Alert in project.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'This project help for show Alert on single button click. Just add pod and call function.'
                       DESC

  s.homepage         = 'https://github.com/tayyab5588/TRAlert'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tayyab5588' => 't.raza5588@gmail.com' }
  s.source           = { :git => 'https://github.com/tayyab5588/TRAlert.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'Classes/**/*.swift'
  
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "13.0"
  }
  
  # s.resource_bundles = {
  #   'TRAlert' => ['TRAlert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
