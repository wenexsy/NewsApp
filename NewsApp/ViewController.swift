//
//  ViewController.swift
//  NewsApp
//
//  Created by Stepashka Igorevich on 4.01.23.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    var viewModel = NewsListViewModel()
    
//    private lazy var headerView: HeaderView = {
//        let v = HeaderView(frame: 32)
//        return v
//
//    }()
    
    private lazy var tableView: UITableView = {
        let v = UITableView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.tableFooterView = UIView()
        v.register(NewsTableViewCell.self, forCellReuseIdentifier: viewModel.reuseID)
        v.delegate = self
        v.dataSource = self
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
//        NetworkManager.shared.getNews { (news) in
//            guard let news = news else { return }
//            print(news[0].title)
//        }
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.newsVM.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: viewModel.reuseID, for: indexPath) as? NewsTableViewCell
        let news = viewModel.newsVM[indexPath.row]
        cell?.newsVM = news
        return cell ?? UITableViewCell()
    }
    
    
}
