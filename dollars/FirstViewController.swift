//
//  FirstViewController.swift
//  dollars
//  Copyright © 2016 akatsu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webHome: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string:"http://www.dollars-bbs.org")
        let request = NSURLRequest(URL: url!)
        
        webHome.loadRequest(request)
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        webHome.delegate = self
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- UIWebView Delegate methods
    func webViewDidFinishLoad(webView: UIWebView) {
        activityIndicator.stopAnimating()
    }

}

