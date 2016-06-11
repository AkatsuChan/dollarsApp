//
//  ThirdViewController.swift
//  dollars
//  Copyright © 2016 akatsu. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webChat: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = NSURL(string:"http://www.drrr.com/")
        let request = NSURLRequest(URL: url!)
        
        webChat.loadRequest(request)
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        webChat.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- UIWebView Delegate methods
    func webViewDidFinishLoad(webView: UIWebView) {
        activityIndicator.stopAnimating()
        
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
