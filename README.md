# RUSwiftTypewriterLabel

##Overview
This is a cool little feature which implements setting a NSMutableAttributedString to be set in a label. The specified label is set one character at a time (think a typewriter) while maintaining all the attributes of the string. Previously, I looked at the existing libraries/sources for typewriter UI, but none retained the attribute of the mutable string.

##Usage
```swift
startTyping(mutedString, typeSpeed: 0.1,label: demoLabel)
```
It is modified from https://github.com/stefandeclerck/SDUILabelTextAnimation
