//
//  VideoViewController1.swift
//  Frome Town
//
//  Created by User on 05/03/2018.
//  Copyright © 2018 Gary Collinson. All rights reserved.
//

import UIKit

class VideosViewController1: UIViewController {
    
    @IBOutlet weak var VideoViewOne: UIWebView!
    
    @IBOutlet weak var VideoViewTwo: UIWebView!
    
    @IBOutlet weak var VideoViewThree: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getVideo(videoCode: "1y-v_iwC_UY")
        getVideo(videoCode2: "gxKdnpeMXe4")
        getVideo(videoCode3: "GofZia4AadU")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        VideoViewOne.loadRequest(URLRequest(url:url!))
        
    }
    
    func getVideo(videoCode2:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode2)")
        VideoViewTwo.loadRequest(URLRequest(url:url!))
    }
    
    func getVideo(videoCode3:String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode3)")
        VideoViewThree.loadRequest(URLRequest(url:url!))
    }
}

