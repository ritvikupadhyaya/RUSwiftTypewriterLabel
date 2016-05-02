//
//  RUSwiftTypewriterLabel.swift
//  RUSwiftTypewriterLabelExample
//
//  Created by Ritvik Upadhyaya on 21/04/16.
//  Copyright © 2016 Ritvik Upadhyaya. All rights reserved.
//

//TODO: Implement the stopAnimation method

import UIKit

extension UILabel {
    
    public func stopAnimation(){
    
    }
    
    /**
     Method starts animating (with 0.1 interval) the label with the given 
     NSMutableAttributedString with the typewriter animation. This method goes 
     over each character and appends the character to the label's attributedText
     property.
     
     - parameter mutableString: A rich string that needs to be set on the label
     */
    public func startTyping(mutableString: NSMutableAttributedString){
        let typeSpeed: NSTimeInterval = 0.1
        self.text = ""
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)) {
            
            for i in 0 ..< mutableString.length {
                dispatch_async(dispatch_get_main_queue()) {
                    
                    let stringToAdd = mutableString.attributedSubstringFromRange(NSRange(location: i, length: 1))
                    
                    let mutableLabelText = NSMutableAttributedString(attributedString: self.attributedText!)
                    
                    mutableLabelText.appendAttributedString(stringToAdd)
                    
                    self.attributedText = mutableLabelText
                }
                
                NSThread.sleepForTimeInterval(typeSpeed)
            }
            
        }
        
    }
    
    /**
     Method starts animating the label with the given NSMutableAttributedString
     with the typewriter animation. This method goes over each character and
     appends the character to the label's attributedText property.
     
     - parameter mutableString: A rich string that needs to be set on the label
     - parameter typeSpeed:     Time after each character is displayed on the label
     */
    public func startTyping(mutableString: NSMutableAttributedString,
                            typeSpeed: NSTimeInterval){
        
        
        dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)) {
            
            for i in 0 ..< mutableString.length {
                dispatch_async(dispatch_get_main_queue()) {
                    
                    let stringToAdd = mutableString.attributedSubstringFromRange(NSRange(location: i, length: 1))
                    
                    let mutableLabelText = NSMutableAttributedString(attributedString: self.attributedText!)
                    
                    mutableLabelText.appendAttributedString(stringToAdd)
                    
                    self.attributedText = mutableLabelText
                }
                
                NSThread.sleepForTimeInterval(typeSpeed)
            }
            
        }
        
    }
}

