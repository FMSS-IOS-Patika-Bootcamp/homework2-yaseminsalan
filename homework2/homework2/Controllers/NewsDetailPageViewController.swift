//
//  NewsDetailPageViewController.swift
//  homework2
//
//  Created by amarenasoftware on 14.09.2022.
//

import UIKit

class NewsDetailPageViewController: UIViewController {

    var newsDetailItem = NewsModel(title: "", description: "", publishingDate: Date.now, newsDate: Date.now, image: "", newsLink: "")
    
    @IBOutlet weak var newsItemImage: UIImageView!
    
    @IBOutlet weak var newsItemDescription: UILabel!
    
    @IBOutlet weak var newsPublishingDate: UILabel!
    @IBAction func moreInformationBtn(_ sender: Any) {
        let webVC = NewsWebViewController()
        webVC.webUrl = newsDetailItem.newsLink
        present(webVC, animated: true)
    }
    // Create Date
    let date = Date()

    // Create Date Formatter
    let dateFormatter = DateFormatter()
 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsItemImage.image = UIImage(named: newsDetailItem.image)
        newsItemDescription.text = newsDetailItem.description
        navigationController?.navigationBar.topItem!.title = newsDetailItem.title
        
       
        
        
        // Set Date Format
        dateFormatter.dateFormat = "dd/MM/YYYY"
        // Convert Date to String
        newsPublishingDate.text = dateFormatter.string(from: newsDetailItem.publishingDate)
       // Do any additional setup after loading the view.
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
