//
//  BotChoiceViewController.swift
//  BotsApp
//
//  Created by mac on 15/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import UIKit
import Firebase
class BotChoiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func signoutBtnPressed(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let authVC = storyboard.instantiateViewController(withIdentifier: "AuthVC")
   
        self.present(authVC,animated: true,completion: nil)
    }
}
