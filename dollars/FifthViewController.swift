//
//  FifthViewController.swift
//  dollars
//  Copyright © 2016 akatsu. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var webMap: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = NSURL(string:"https://www.google.com/maps/d/viewer?mid=1J6GzptuWf7FBWmzAi5i-LBCaBaE")
        let request = NSURLRequest(URL: url!)
        
        webMap.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
