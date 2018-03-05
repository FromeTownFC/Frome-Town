//
//  ReportsViewController.swift
//  Frome Town
//
//  Created by kate Cummings on 12/10/2017.
//  Copyright © 2017 Dan Turner. All rights reserved.
//

import UIKit
import WebKit

class ReportsViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration(); webConfiguration
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "http://www.frometownfc.co.uk/reports/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
