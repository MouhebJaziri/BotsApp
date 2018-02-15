//
//  SignInViewController.swift
//  BotsApp
//
//  Created by mac on 12/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var facebook: UIButton!
    @IBOutlet weak var google: UIButton!
    @IBOutlet weak var linkedin: UIButton!

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.facebook.layer.cornerRadius = 30.0
        self.facebook.clipsToBounds = true
        self.linkedin.layer.cornerRadius = 30.0
        self.linkedin.clipsToBounds = true
        self.google.layer.cornerRadius = 30.0
        self.google.clipsToBounds = true
       
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

    @IBAction func signIn(_ sender: Any) {
        if email.text != nil && password.text != nil {
            AuthService.instance.loginUser(withEmail: email.text!, andPassword: password.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
                    let guideVC = storyboard.instantiateViewController(withIdentifier: "guideVC")
                    self.present(guideVC, animated: true, completion: nil)
                }
                else{
                    print(String(describing:loginError?.localizedDescription))
                }
            })
        }
    }
    @IBAction func google(_ sender: UIButton) {
    }
    @IBAction func facebook(_ sender: UIButton) {
    }
    @IBAction func linkedin(_ sender: UIButton) {
    }
}
