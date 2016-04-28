# RUSwiftTypewriterLabel

[![CI Status](http://img.shields.io/travis/ritvikupadhyaya/RUSwiftTypewriterLabel.svg?style=flat)](https://travis-ci.org/ritvikupadhyaya/RUSwiftTypewriterLabel)
[![Version](https://img.shields.io/cocoapods/v/RUSwiftTypewriterLabel.svg?style=flat)](http://cocoapods.org/pods/RUSwiftTypewriterLabel)
[![License](https://img.shields.io/cocoapods/l/RUSwiftTypewriterLabel.svg?style=flat)](http://cocoapods.org/pods/RUSwiftTypewriterLabel)
[![Platform](https://img.shields.io/cocoapods/p/RUSwiftTypewriterLabel.svg?style=flat)](http://cocoapods.org/pods/RUSwiftTypewriterLabel)

## Demo

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Or download the project and go to the Example directory and open the `RUSwiftTypewriterLabel.xcworkspace` workspace file.

![Alt Text](https://cloud.githubusercontent.com/assets/5144703/14835995/aa766c7a-0bd2-11e6-897e-e0af77dc19d6.gif)

## Requirements

## Installation

RUSwiftTypewriterLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RUSwiftTypewriterLabel"
```
or
```ruby
pod 'RUSwiftTypewriterLabel', '~> 0.2.1'
```

## Author

Ritvik Upadhyaya

## License

RUSwiftTypewriterLabel is available under the MIT license. See the LICENSE file for more info.

##Overview
This is a cool little feature which implements setting a NSMutableAttributedString to be set in a label. The specified label is set one character at a time (think a typewriter) while maintaining all the attributes of the string. Previously, I looked at the existing libraries/sources for typewriter UI, but none retained the attribute of the mutable string.

It is modified from https://github.com/stefandeclerck/SDUILabelTextAnimation

##Usage
```swift
demoLabel.startTyping(mutedString, typeSpeed: 0.2)
```
or
default: 
```swift
demoLabel.startTyping(mutedString)
```
