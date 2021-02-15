//
//  ApperanceViewController.swift
//  MoviesList
//
//  Created by elina.zambere on 12/02/2021.
//

import UIKit

class ApperanceViewController: UIViewController {
    var DarkOn = Bool()
    var LightOn = Bool()
    
    @IBOutlet weak var DarkSwitch: UISwitch!
    @IBOutlet weak var LightSwitch: UISwitch!
    
    let window = UIApplication.shared.keyWindow
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detectMode()
        
        //let DarkDefault = UserDefaults.standard
        //DarkOn = DarkDefault.bool(forKey: "DarkDefault")
        
        //let LightDefault = UserDefaults.standard
        //LightOn = LightDefault.bool(forKey: "LightDefault")

        
    }
    
    
    func detectMode(){
        if self.traitCollection.userInterfaceStyle == .dark {
            print("dark mode")
            DarkSwitch.isOn = true
            LightSwitch.isOn = false
            
        }else{
            DarkSwitch.isOn = false
            LightSwitch.isOn = true
            print("light mode")
        }
    }
    
    
    @IBAction func DarkAction(_ sender: Any) {
        DarkSwitch.isOn = true
        LightSwitch.isOn = false
        window?.overrideUserInterfaceStyle = .dark
        
       // let DarkDefault = UserDefaults.standard
        //DarkDefault.set(true, forKey: "DarkDefault")
        
        //let LightDefault = UserDefaults.standard
        //LightDefault.set(false, forKey: "LightDefault")
        
    }
    
    @IBAction func LightAction(_ sender: Any) {
        DarkSwitch.isOn = false
        LightSwitch.isOn = true
        window?.overrideUserInterfaceStyle = .light
        
        //let DarkDefault = UserDefaults.standard
        //DarkDefault.set(false, forKey: "DarkDefault")
        
        //let LightDefault = UserDefaults.standard
        //LightDefault.set(true, forKey: "LightDefault")
    }
    
   
}

