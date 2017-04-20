//
//  ViewController.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OptionsSavable {

    var options = Options(lineWidth: 1, lineColor: 0, filled: true, fillColor: 0)
    @IBOutlet weak var drawingView: DrawingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

}

//Segeu
extension ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let theNextViewController = segue.destination as! OptionsViewController
        theNextViewController.shape = drawingView.shapeType
        theNextViewController.options = options
        theNextViewController.myParent = self
    }
}

//SegmentedIndex Functions
extension ViewController {
    @IBAction func shapeChosen(_ sender: UISegmentedControl) {
        self.drawingView.shapeType = sender.selectedSegmentIndex
    }
}

//OptionsSavable function
extension ViewController {
    func saveOptions(options:Options){
        self.options = options
    }
}
