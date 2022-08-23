//
//  webview.swift
//  Yicheng_Li_Assignment8
//
//  Created by mac on 2021/3/1.
//

import UIKit
import WebKit

class detialwebView: UIViewController, WKNavigationDelegate
{
    var itemString:String? = "";
    
    @IBOutlet weak var webview: WKWebView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let target = NSURL(string: itemString!)
        let request = NSURLRequest(url:target! as URL)
        webview.load(request as URLRequest)
    }
}
