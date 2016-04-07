#
# Be sure to run `pod lib lint TBCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TBCore"
  s.version          = "0.0.3"
  s.summary          = "TBCore is a iOS framework. You have beauty project and stable. It will down time development for you"
  s.description      = "TBCore allows configure & create base to any iOS Project. Below are services needed to be implement basic funtion. so it's help to you can write short code and meanable. So you will the clear source code"
  s.homepage         = "https://github.com/BunLV/TBCore"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "BunLV" => "levietbun@gmail.com" }
  s.source           = { :git => "https://github.com/BunLV/TBCore.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

# - - - - - - - - - - - - - - - - - - - - - - - Source files - - - - - - - - - - - - - - - - - - - - - - -
  s.source_files = 'TBCore/*', 'TBCore/01-Define/*', 'TBCore/02-Category/**/**/*', 'TBCore/09-Base/**/*'


# - - - - - - - - - - - - - - - - - - - - - - - Bundle files - - - - - - - - - - - - - - - - - - - - - - -
  s.resource_bundles = {
    'TBCore' => ['TBCore/99-Resouces/*.{png,xib,storyboad}']
  }


# - - - - - - - - - - - - - - - - - - - - - - - Public headers - - - - - - - - - - - - - - - - - - - - - - -
  s.public_header_files = 'TBCore/*.h'
#, 'TBCore/**/*.h', 'TBCore/**/**/*.h', 'TBCore/**/**/**/*.h'


# - - - - - - - - - - - - - - - - - - - - - - - Frameworks - - - - - - - - - - - - - - - - - - - - - - -
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'


# - - - - - - - - - - - - - - - - - - - - - - - Dependencies - - - - - - - - - - - - - - - - - - - - - - -
  s.dependency 'AFNetworking', 'SVPullToRefresh'

end
