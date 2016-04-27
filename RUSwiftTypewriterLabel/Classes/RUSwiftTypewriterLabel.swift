//
//  RUSwiftTypewriterLabel.swift
//  RUSwiftTypewriterLabelExample
//
//  Created by Ritvik Upadhyaya on 21/04/16.
//  Copyright © 2016 Ritvik Upadhyaya. All rights reserved.
//



import UIKit

/**
 Method starts animating the label with the given NSMutableAttributedString with
 the typewriter animation. This method goes over each character in the string
 and adds the attributes to a shadow string and appends the character to the
 label's attributedText property.
 
 - parameter mutableString: A rich string that needs to be set on the label
 - parameter typeSpeed:     Time after each character is displayed on the label
 - parameter label:         The label to be set with the animation
 */
public func startTyping(mutableString: NSMutableAttributedString, typeSpeed: NSTimeInterval, label: UILabel) {
    
    label.text = ""
    
    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)) {
        
        for i in 0 ..< mutableString.length {
            dispatch_async(dispatch_get_main_queue()) {
                
                let stringToAdd = mutableString.attributedSubstringFromRange(NSRange(location: i, length: 1))
                
                let mutableLabelText = NSMutableAttributedString(attributedString: label.attributedText!)
                
                mutableLabelText.appendAttributedString(stringToAdd)
                
                label.attributedText = mutableLabelText
            }
            
            NSThread.sleepForTimeInterval(typeSpeed)
        }
        
    }
    
}