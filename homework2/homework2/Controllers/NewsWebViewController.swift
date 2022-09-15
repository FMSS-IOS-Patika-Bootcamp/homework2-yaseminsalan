//
//  NewsWebViewController.swift
//  homework2
//
//  Created by amarenasoftware on 15.09.2022.
//

import UIKit
import WebKit

class NewsWebViewController: UIViewController {

    var webUrl:String = ""
    @IBOutlet weak var newWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL.init(string: webUrl){
            let urlRequest = URLRequest.init(url: url)
            newWebView.load(urlRequest)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
