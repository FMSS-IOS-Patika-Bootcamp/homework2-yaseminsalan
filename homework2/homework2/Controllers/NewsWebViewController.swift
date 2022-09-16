//
//  NewsWebViewController.swift
//  homework2
//

import UIKit
import WebKit

class NewsWebViewController: UIViewController {

    var webUrl:String = ""
    @IBOutlet weak var newWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
       //WebKit used to show news links
        if let url = URL.init(string: webUrl){
            let urlRequest = URLRequest.init(url: url)
            newWebView.load(urlRequest)
        }
    }

}
