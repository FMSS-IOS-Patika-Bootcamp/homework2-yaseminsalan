//
//  NewsModel.swift
//  homework2

//

import Foundation
struct NewsModel{
    var title:String
    var description:String
    var publishingDate:Date
    var newsDate:Date
    var image:String
    var newsLink:String
    
    
    init(title:String,description:String,publishingDate:Date,newsDate:Date,image:String,newsLink:String){
        self.title = title
        self.description = description
        self.publishingDate = publishingDate
        self.newsDate = newsDate
        self.image = image
        self.newsLink = newsLink
    }
}

