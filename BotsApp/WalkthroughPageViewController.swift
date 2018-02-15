//
//  WalkthroughPageViewController.swift
//  BotsApp
//
//  Created by mac on 11/02/2018.
//  Copyright © 2018 mouhebJaziri. All rights reserved.
//

import UIKit

class WalkthroughPageViewController: UIPageViewController , UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).index
        index -= 1
        
        return contentViewController(at: index)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var index = (viewController as! WalkthroughContentViewController).index
        index += 1
        
        return contentViewController(at: index)
    }
    func contentViewController(at index: Int) -> WalkthroughContentViewController? {
        if index < 0 || index >= pageHeadings.count {
            return nil
        }
        
        // Create a new view controller and pass suitable data.
        if let pageContentViewController = storyboard?.instantiateViewController(withIdentifier: "WalkthroughContentViewController") as? WalkthroughContentViewController {
            
            pageContentViewController.imageFile = pageImages[index]
            pageContentViewController.heading = pageHeadings[index]
            pageContentViewController.content = pageContent[index]
            pageContentViewController.view.backgroundColor = UIColor(red: CGFloat(pagecolors[index][0]/255.0), green: CGFloat(pagecolors[index][1]/255.0), blue: CGFloat(pagecolors[index][2]/255.0), alpha: 1.0)
           
            if  index == 2{
                pageContentViewController.joinUS.isHidden = false
                pageContentViewController.SKIP.isHidden = true
            }
            else
            {
                pageContentViewController.joinUS.isHidden = true
                pageContentViewController.SKIP.isHidden = false
            }
            pageContentViewController.index = index
            
            return pageContentViewController
        }
        
        return nil
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pageHeadings.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        if let pageContentViewController = storyboard?.instantiateViewController(withIdentifier: "WalkthroughContentViewController") as? WalkthroughContentViewController {
            
            return pageContentViewController.index
        }
        
        return 0
    }
    var pageHeadings = ["Welcome", "Be Special", "Get Started"]
    var pageImages = ["bot-intro-1", "bot-intro-2", "bot-intro-3"]
    var pageContent = ["Why not have your own chatbot ?","Design your chatbot without a single line of code",
                       "Inspire everyone with the power of your ideas and deploy your bot on different platforms"]
    
    var pagecolors=[[255.0,207.0,15.0],[32.0,208.0,203.0],[255.0,91.0,101.0]]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        // Create the first walkthrough screen
        if let startingViewController = contentViewController(at: 0) {
            setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
        }
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

}
