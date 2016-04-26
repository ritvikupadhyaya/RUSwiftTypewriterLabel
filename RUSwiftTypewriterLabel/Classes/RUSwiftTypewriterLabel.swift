//
//  RUSwiftTypewriterLabel.swift
//  RUSwiftTypewriterLabelExample
//
//  Created by Ritvik Upadhyaya on 21/04/16.
//  Copyright © 2016 Ritvik Upadhyaya. All rights reserved.
//

import UIKit

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