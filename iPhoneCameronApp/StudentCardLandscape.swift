//
//  StudentCardLandscape.swift
//  iPhoneCameronApp
//
//  Created by CS Student on 2017-11-13.
//  Copyright © 2017 CS Student. All rights reserved.
//

import UIKit

class StudentCardLandscape: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Change safe area font to white
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    //Hide tab bar when phone is landscape
    override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        if UIDevice.current.orientation.isLandscape == true {
            self.tabBarController?.tabBar.isHidden = true
        }
        else {
            self.tabBarController?.tabBar.isHidden = false
        }
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
