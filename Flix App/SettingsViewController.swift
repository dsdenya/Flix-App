//
//  SettingsViewController.swift
//  Flix App
//
//  Created by Aloha on 9/13/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DarkModeLabel: UILabel!
    @IBOutlet weak var DarkModeTheme: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DarkModeTheme.selectedSegmentIndex = MTUserDefaults.shared.theme.rawValue
    }
    
    @IBAction func DarkModeAction(_ sender: UISegmentedControl) {
     
        MTUserDefaults.shared.theme = Theme(rawValue: sender.selectedSegmentIndex ) ?? .dark
        
            self.view.window?.overrideUserInterfaceStyle = MTUserDefaults.shared.theme.getUserInterfaceStyle()
            
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
