#
# Be sure to run `pod lib lint GMapUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GMapUtils'
  s.version          = '0.1.0'
  s.summary          = 'Enable Googles static libray as a dynamic library for Swift projects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod extracts the `GMUMarkerCluster` methods of Google's static library to work with Swift as a dynamic library.
No changes have been made to the original files. No warranty it actually works.
                       DESC

  s.homepage         = 'https://github.com/xpureTobias/test_gmu.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 't.philipp@xpure.de' => 't.philipp@xpure.de' }
  s.source           = { :git => 'https://github.com/xpureTobias/test_gmu.git', :branch => 'master' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'GMapUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GMapUtils' => ['GMapUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.static_framework = true

   s.dependency 'GoogleMaps', '~> 3.5.0'

  s.platform     = :ios, '12.0'
  s.requires_arc = true

  s.pod_target_xcconfig = {
    "OTHER_LDFLAGS" => '$(inherited) -framework "GoogleMaps"',
    "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => 'YES',
    "FRAMEWORK_SEARCH_PATHS" => '$(inherited) "${PODS_ROOT}/GoogleMaps/Base/Frameworks" "${PODS_ROOT}/GoogleMaps/Maps/Frameworks"',
  }
end
