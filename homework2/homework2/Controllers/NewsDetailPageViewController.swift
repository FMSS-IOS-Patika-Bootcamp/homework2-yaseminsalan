//
//  NewsDetailPageViewController.swift
//  homework2


import UIKit

class NewsDetailPageViewController: UIViewController {
    @IBOutlet weak var newsItemImage: UIImageView!
    @IBOutlet weak var newsItemDescription: UILabel!
    @IBOutlet weak var newsPublishingDate: UILabel!
    @IBAction func moreInformationBtn(_ sender: Any) {
        let webVC = NewsWebViewController()
        webVC.webUrl = newsDetailItem.newsLink
        present(webVC, animated: true)
    }
    var newsDetailItem = NewsModel(title: "", description: "", publishingDate: Date.now, newsDate: Date.now, image: "", newsLink: "")
    
    // Create Date
    let date = Date()
    // Create Date Formatter
    let dateFormatter = DateFormatter()
 
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsItemImage.image = UIImage(named: newsDetailItem.image)
        newsItemDescription.text = newsDetailItem.description
        self.navigationItem.title = newsDetailItem.title.uppercased()
        
        //For back button in navigation bar
        let backButton = UIBarButtonItem()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
        
        // Set Date Format
        dateFormatter.dateFormat = "dd/MM/YYYY"
        // Convert Date to String
        newsPublishingDate.text = dateFormatter.string(from: newsDetailItem.publishingDate)
        }

}
