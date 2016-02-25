//
//  LiegButtons.swift
//  waarommoetjeliegen
//
//  Created by Peter Alserda on 17/02/16.
//  Copyright © 2016 Peter Alserda. All rights reserved.
//

import UIKit

class LiegButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 5
        self.backgroundColor = liegColors.lightBlue
        self.clipsToBounds = true
        self.setBackgroundImage(UIImage(named: "background-highlighted"), forState: .Highlighted)
        
        let border = UIView(frame: CGRectMake(0, self.frame.height - 2, self.frame.width, 2))
        border.backgroundColor = liegColors.darkBlue
        self.addSubview(border)
    }
    
}
