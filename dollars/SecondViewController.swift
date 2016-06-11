//
//  SecondViewController.swift
//  dollars
//  Copyright © 2016 akatsu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webForum: UIWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string:"http://www.roadrunner-forums.com/")
        let request = NSURLRequest(URL: url!)
        
        webForum.loadRequest(request)
        
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        webForum.delegate = self
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


