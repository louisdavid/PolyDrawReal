//
//  ViewController.swift
//  PolyDraw
//
//  Created by Chris Chadillon on 2017-03-02.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, OptionsSavable {

    var options = Options()
    @IBOutlet weak var drawingView: DrawingView!
    @IBOutlet weak var undoBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //if options were saved previously
        // options = saved options
        self.drawingView.options = options
        undoBtn.isEnabled = false
        self.drawingView.undoBtn = undoBtn
    }
}

//Segue
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
        self.drawingView.isThereAPartialShape = false
    }
}

//OptionsSavable function
extension ViewController {
    func saveOptions(options:Options){
        self.options = options
        self.drawingView.options = options
    }
}

//Button Functions
extension ViewController {
    @IBAction func undo(_ sender: UIBarButtonItem) {
        if let _ = self.drawingView.theShapes.popLast(){
            if self.drawingView.theShapes.isEmpty {
                undoBtn.isEnabled = false
            }
            self.drawingView.setNeedsDisplay()
        }
    }
}
