//
//  CATransition.swift
//  Weather
//
//  Created by Sushanth S on 16/06/21.
//

import Foundation
import UIKit

extension CATransition {
    
    static func transitionLeftToRight() -> CATransition{
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        return transition
    }
    
    static func transitionRightToLeft() -> CATransition{
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        return transition
    }
}
