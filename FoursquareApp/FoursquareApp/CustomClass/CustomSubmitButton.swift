//
//  CustomSubmitButton.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 01/07/21.
//

import Foundation
import UIKit

class CustomSubmitButton: UIButton{
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        buttonConfiguration()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        buttonConfiguration()
    }
    
    func buttonConfiguration() {
        
        self.clipsToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.gray.cgColor
        self.clipsToBounds = true
    }
    
}
