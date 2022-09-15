//
//  NewsCollectionViewCell.swift
//  homework2

//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsDescriptionLabel: UILabel!
    
    @IBOutlet weak var goDetailScreenBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        cellView.layer.cornerRadius = 10
        cellView.layer.masksToBounds = true
        // Initialization code
    }
    //Created closure that can return int value to return back index
    var goDetailButtonAction : ((Int) -> ())?
    var row:Int!
    @IBAction func goDetailScreenBtn(_ sender: Any) {
        //we triggered the closure when the button is pressed
        goDetailButtonAction?(row)
        
    }
}
