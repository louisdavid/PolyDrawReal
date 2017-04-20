//
//  Line.swift
//  PolyDraw
//
//  Created by Cote, Louis-David on 2017-04-20.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Line:Shape {
    var theHeight:Double
    var theWidth:Double
    
    init(X:Double, Y:Double, theHeight:Double, theWidth:Double) {
        self.theHeight = theHeight
        self.theWidth = theWidth
        super.init(X: X, Y: Y)
    }
    
    override func draw(_ theContext: CGContext) {
        theContext.move(to: CGPoint(x: CGFloat(self.X), y: CGFloat(self.Y)))
        theContext.addLine(to: CGPoint(x: CGFloat(self.theWidth), y: CGFloat(self.theHeight)))
        theContext.strokePath()
    }
}
