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
    
    let defaults = UserDefaults.standard
    
    let window = UIApplication.shared.keyWindow
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detectMode()

        if let darkSwitch = defaults.value(forKey: "DarkSwitch") {
            
            DarkSwitch.isOn = darkSwitch as! Bool
            
        }
        
        if let lightSwitch = defaults.value(forKey: "LightSwitch") {
            
            LightSwitch.isOn = lightSwitch as! Bool
            
        }
        
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
    
    
    @IBAction func DarkAction(_ sender: UISwitch) {
        DarkSwitch.isOn = true
        LightSwitch.isOn = false
        window?.overrideUserInterfaceStyle = .dark
        defaults.set(sender.isOn, forKey: "DarkSwitch")
        }
    
    @IBAction func LightAction(_ sender: UISwitch) {
        DarkSwitch.isOn = false
        LightSwitch.isOn = true
        window?.overrideUserInterfaceStyle = .light
        defaults.set(sender.isOn, forKey: "LightSwitch")
        }
    
    @IBAction func lightTnemePressed(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "LightSwitch")
        
    }
    
    @IBAction func darkThemePressed(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "DarkSwitch")

        
    }
    
}


