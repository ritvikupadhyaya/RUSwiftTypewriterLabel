//
//  ViewController.swift
//  RUSwiftTypewriterLabelExample
//
//  Created by Ritvik Upadhyaya on 21/04/16.
//  Copyright © 2016 Ritvik Upadhyaya. All rights reserved.
//

import UIKit

class demoViewController: UIViewController {
    
    @IBOutlet weak var demoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set up the label UI
        demoLabel.textAlignment = .Center
        demoLabel.adjustsFontSizeToFitWidth = true
        
        let demoLabelString = "Hello World."
        
        let mutedString = generateMutableAttributedString(demoLabelString);
        

            startTyping(mutedString, typeSpeed: 0.1,label: demoLabel)
        
        
    }
    
    func generateMutableAttributedString(inputString: String) -> NSMutableAttributedString {
        let mutedString = NSMutableAttributedString(string: inputString)
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 150/170, green: 200/200, blue: 115/200, alpha: 180/200), range: NSRange(location: 0, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 181/200, green: 62/200, blue: 152/200, alpha: 180/200), range: NSRange(location: 1, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 26/230, green: 171/200, blue: 164/200, alpha: 200/200), range: NSRange(location: 2, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 26/230, green: 171/200, blue: 164/200, alpha: 200/200), range: NSRange(location: 3, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 209/230, green:142/200, blue: 97/200, alpha: 200/200), range: NSRange(location: 4, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 224/230, green: 60/200, blue: 55/200, alpha: 200/200), range: NSRange(location: 6, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 26/230, green: 171/200, blue: 164/200, alpha: 200/200), range: NSRange(location: 7, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 26/230, green: 171/200, blue: 164/200, alpha: 200/200), range: NSRange(location: 8, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 181/200, green: 62/200, blue: 152/200, alpha: 180/200), range: NSRange(location: 9, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 209/230, green: 142/200, blue: 97/200, alpha: 200/200), range: NSRange(location: 10, length: 1))
        
        mutedString.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 26/230, green: 142/200, blue: 100/200, alpha: 200/200), range: NSRange(location: 11, length: 1))
        
        return mutedString
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

