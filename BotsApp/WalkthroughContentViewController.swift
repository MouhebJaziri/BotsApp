//
//  WalkthroughContentViewController.swift
//  BotsApp
//
//  Created by mac on 11/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import UIKit

class WalkthroughContentViewController: UIViewController {
    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    @IBOutlet var contentImageView: UIImageView!
    
    @IBOutlet weak var SKIP: UIButton!
    @IBOutlet weak var joinUS: UIButton!
    var index = 0
    var heading = ""
    var imageFile = ""
    var content = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headingLabel.text = heading
        contentLabel.text = content
        contentImageView.image = UIImage(named:imageFile)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func joinUS(_ sender: Any) {
    }
    
    @IBAction func SKIP(_ sender: UIButton) {
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
