//
//  TwitterPageController.swift
//  Frome Town
//
//  Created by kate Cummings on 23/10/2017.
//  Copyright © 2017 Dan Turner. All rights reserved.
//


import UIKit
import WebKit

class TwitterPageController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration(); webConfiguration
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://twitter.com/frometownfc")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
