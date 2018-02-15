//
//  SignUpViewController.swift
//  BotsApp
//
//  Created by mac on 12/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var danger: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func register(_ sender: UIButton) {
        
        if password.text != confirmPassword.text {
            danger.isHidden = false
        }
        else {
        if email.text != nil && password.text != nil && confirmPassword.text != nil {
            AuthService.instance.registerUser(withEmail: self.email.text!, andPassword: self.password.text!, userCreationComplete: { (success, registrationError) in
                if success {
                    AuthService.instance.loginUser(withEmail: self.email.text!, andPassword: self.password.text!, loginComplete: { (success, nil) in
                        print("REGISTER SUCCESS")
                        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
                        let guideVC = storyboard.instantiateViewController(withIdentifier: "guideVC")
                       self.present(guideVC, animated: true, completion: nil)
                    })
                }
                else{
                    print(String(describing:registrationError?.localizedDescription))
                }
        })
        
            }}
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
