# RUSwiftTypewriterLabel

[![CI Status](http://img.shields.io/travis/ritvikupadhyaya/RUSwiftTypewriterLabel.svg?style=flat)](https://travis-ci.org/ritvikupadhyaya/RUSwiftTypewriterLabel)
[![Version](https://img.shields.io/cocoapods/v/RUSwiftTypewriterLabel.svg?style=flat)](http://cocoapods.org/pods/RUSwiftTypewriterLabel)
[![License](https://img.shields.io/cocoapods/l/RUSwiftTypewriterLabel.svg?style=flat)](http://cocoapods.org/pods/RUSwiftTypewriterLabel)
[![Platform](https://img.shields.io/cocoapods/p/RUSwiftTypewriterLabel.svg?style=flat)](http://cocoapods.org/pods/RUSwiftTypewriterLabel)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![Alt Text](https://cloud.githubusercontent.com/assets/5144703/14835852/be2866b6-0bd1-11e6-8f82-91d86461555c.gif)

## Requirements

## Installation

RUSwiftTypewriterLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "RUSwiftTypewriterLabel"
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
startTyping(mutedString, typeSpeed: 0.1,label: demoLabel)
```
