#
# Be sure to run `pod lib lint TBCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TBCore"
  s.version          = "1.0.0"
  s.summary          = "A short description of TBCore."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       DESC

  s.homepage         = "https://github.com/BunLV/TBCore"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "BunLV" => "levietbun@gmail.com" }
  s.source           = { :git => "https://github.com/BunLV/TBCore.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

# - - - - - - - - - - - - - - - - - - - - - - - Source files
  s.source_files = 'TBCore/*.h'

  s.subspec 'TBCore/01-Define' do |ss|
    ss.source_files = 'TBCore/01-Define/*.h'
  end


# - - - - - - - - - - - - - - - - - - - - - - - Bundle files
  s.resource_bundles = {
    'TBCore' => ['TBCore/99-Resouces/*.{png,xib,storyboad}']
  }


# - - - - - - - - - - - - - - - - - - - - - - - Public headers
  s.public_header_files = 'TBCore/*.h', 'TBCore/01-Define/*.h'


# - - - - - - - - - - - - - - - - - - - - - - - Frameworks
  s.frameworks = 'UIKit'


# - - - - - - - - - - - - - - - - - - - - - - - Dependencies
  # s.dependency 'AFNetworking', '~> 2.3'

end
