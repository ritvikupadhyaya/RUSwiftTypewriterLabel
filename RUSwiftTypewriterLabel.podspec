#
# Be sure to run `pod lib lint RUSwiftTypewriterLabel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RUSwiftTypewriterLabel"
  s.version          = "0.1.0"
  s.summary          = "Cool typewriter animation implementing a NSMutableAttributedString to be set in a label."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is a cool little feature which implements setting a NSMutableAttributedString to be set in a label. The specified label is set one character at a time (think a typewriter) while maintaining all the attributes of the string. So now you can have different font color, size, types and still have this cool animation.
                       DESC

  s.homepage         = "https://github.com/ritvikupadhyaya/RUSwiftTypewriterLabel"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Ritvik Upadhyaya" => "ritvikupadhyaya@gmail.com" }
  s.source           = { :git => "https://github.com/ritvikupadhyaya/RUSwiftTypewriterLabel.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RUSwiftTypewriterLabel/Classes/**/*'
  s.resource_bundles = {
    'RUSwiftTypewriterLabel' => ['RUSwiftTypewriterLabel/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
