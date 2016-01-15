//
//  ViewController.swift
//  PickerData
//
//  Created by Olivier Tuyishime on 2/7/15.
//  Copyright (c) 2015 sir Olivier Tuyishime. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    let moodArray = ["Happy","Sad","Maudlin","Ecstatic","Overjoyed","Optimistics","Bewildered"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackground:UIColor
        switch row{
        case 0,2,4,5:
            newBackground = UIColor.blueColor()
        case 1,3,6:
            newBackground = UIColor.greenColor()
        default:
            newBackground = UIColor(red:255/255, green:255/255, blue: 255/255, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackground
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

