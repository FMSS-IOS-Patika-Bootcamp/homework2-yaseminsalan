//
//  NewsCollectionViewManager.swift
//  homework2
//

import Foundation
import UIKit

//This class derives from NSObject because it allows us to set some delegates on itself.
class NewsCollectionViewManager:NSObject{
    private let customCellIdentifier = "NewsCell"
   weak var collectionView:UICollectionView?
    weak var controller:ViewController?
    
   //inside this class our newsModel will be called RowItem
    typealias RowItem = NewsModel
    
    //items has become an array of NewsModel
    private var items:[RowItem] = []
    
    
    public func set(items:[RowItem]){
        self.items = items
        //gelen items lardan sonra collectionview i tekrar yüklüyoruz
        collectionView?.reloadData()
    }
    //Constructor created
    init(collectionView:UICollectionView,vc:ViewController) {
        super.init()
        self.collectionView = collectionView
        self.controller = vc
      
        configureCollectionView()
    }
    private func configureCollectionView(){
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
}
extension NewsCollectionViewManager: UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath) as! NewsCollectionViewCell
        cell.newsImage.image = UIImage(named: items[indexPath.row].image)
        cell.newsDescriptionLabel.text = items[indexPath.row].title
        //We have set indexPath.row u cell.row a
        cell.row = indexPath.row
        //Closure is set
        //cell actions moved to controllers
        cell.goDetailButtonAction = { row in
           
            //
            if let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "newsDetailPageStroyboard") as? NewsDetailPageViewController
            {
                vc.newsDetailItem = self.items[indexPath.row]
                self.controller?.navigationController?.pushViewController(vc, animated: true)
             
            }
            
            
            
            
            
            
            
          
        }
        
        return cell
    }
    
    
}
extension NewsCollectionViewManager: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //cells are sized to have two cell items in a row.
        return  CGSize(width: (collectionView.frame.size.width-20) / 2, height: (collectionView.frame.size.height*0.35))
    }
    
  /* func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
    }
   func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5.0
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 5.0
    }*/
}


