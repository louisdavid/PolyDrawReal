//
//  Options.swift
//  PolyDraw
//
//  Created by Cote, Louis-David on 2017-04-20.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class Options {

    var lineWidth:Float
    var lineColor:Int
    var filled:Bool
    var fillColor:Int
    
    init(lineWidth:Float, lineColor:Int,  filled:Bool, fillColor:Int){
        self.lineWidth = lineWidth
        self.lineColor = lineColor
        self.filled = filled
        self.fillColor = fillColor
    }
}
