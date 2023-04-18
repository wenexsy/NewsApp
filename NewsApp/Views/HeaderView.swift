//
//  HeaderView.swift
//  NewsApp
//
//  Created by Stepashka Igorevich on 16.01.23.
//

import UIKit

final class HeaderView: UIView {
    
    private var fontSize: CGFloat
    
    private lazy var headingLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "News"
        v.font = UIFont.boldSystemFont(ofSize: fontSize)
        return v
    }()
    
    init(fontsSize: CGFloat) {
        self.fontSize = fontsSize
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    private lazy var subHeadLineLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.font = v.font.withSize(fontSize)
        v.text = "Top headliner"
        v.textColor = .cyan
        return v
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(subHeadLineLabel)
        addSubview(headingLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            subHeadLineLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            subHeadLineLabel.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 20),
            subHeadLineLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            headingLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            headingLabel.topAnchor.constraint(equalTo: subHeadLineLabel.bottomAnchor, constant: 8),
            headingLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
}
