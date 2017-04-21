//
//  PreviewPaneView.swift
//  PolyDraw
//
//  Created by Cote, Louis-David on 2017-04-21.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class PreviewPaneView: UIView {
    var shapeType = 0
    var options = Options()
    
    override func draw(_ rect: CGRect) {
        
        if shapeType == 0 {
            self.thePartialShape = Rect(X: 40,
                                        Y: 40,
                                        theHeight: 40),
                                        theWidth: 40),
                                        options: Options(options))
        } else if shapeType == 1 {
            self.thePartialShape = Oval(X: 40,
                                        Y: 40,
                                        theHeight: 40),
            theWidth: 40),
            options: Options(options))
        } else if shapeType == 2 {
            self.thePartialShape = Line(X: 40,
                                        Y: 40,
                                        theHeight: 40),
            theWidth: 40),
            options: Options(options))
            
        }
    }

    }
}
