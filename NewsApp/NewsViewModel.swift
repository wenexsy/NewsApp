//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Stepashka Igorevich on 5.01.23.
//

import Foundation

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Uknown"
    }
    var title: String {
        return news.title ?? ""
    }
    var description: String {
        return news.description ?? ""
    }
    var urlToImage: String {
        return news.urlToImage ?? "https://c8p9p3e5.rocketcdn.me/wp-content/uploads/2019/06/no-dad-meme.jpg"
    }
    var url: String {
        return news.url ?? ""
    }

}

