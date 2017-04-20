//
//  OptionsViewController.swift
//  PolyDraw
//
//  Created by Cote, Louis-David on 2017-04-20.
//  Copyright © 2017 Chris Chadillon. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
    
    //Pre View Data
    var options = Options(lineWidth: 1, lineColor: 0, filled: true, fillColor: 0)
    var shape:Int = 0
    var myParent:OptionsSavable!
    
    //Variables
    @IBOutlet weak var lineWidth: UISlider!
    @IBOutlet weak var lineColor: UISegmentedControl!
    @IBOutlet weak var filled: UISwitch!
    @IBOutlet weak var fillColor: UISegmentedControl!
    @IBOutlet weak var previewPane: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set up options
        lineWidth.value = options.lineWidth
        lineColor.selectedSegmentIndex = options.lineColor
        if(options.filled){
            fillColor.selectedSegmentIndex = options.fillColor
        }else{
            fillColor.isEnabled = false
        }
        filled.isOn = options.filled

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

//Bar Button Functions
extension OptionsViewController{
    @IBAction func save(_ sender: UIBarButtonItem) {
        options.lineWidth = lineWidth.value
        options.lineColor = lineColor.selectedSegmentIndex
        options.filled = filled.isOn
        options.fillColor = fillColor.selectedSegmentIndex
        myParent.saveOptions(options: self.options)
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}

//Slider Functions
extension OptionsViewController {
    @IBAction func lineWidthChanged(_ sender: UISlider) {
    }
}

//Switch Functions
extension OptionsViewController {
    @IBAction func filledChanged(_ sender: UISwitch) {
        if(filled.isOn){
            fillColor.isEnabled = true
        }else{
            fillColor.isEnabled = false
        }
    }
}

//Segmented Control functions
extension OptionsViewController {
    @IBAction func lineColorChanged(_ sender: UISegmentedControl) {
    }
    @IBAction func fillColorChanged(_ sender: UISegmentedControl) {
    }
}


