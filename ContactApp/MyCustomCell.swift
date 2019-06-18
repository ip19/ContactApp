//
//  MyCustomCell.swift
//  ContactApp
//
//  Created by ievgenii on 6/18/19.
//  Copyright © 2019 hw. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {
    
    //MARK: - Properties
    
    let customImageView = UIImageView()
    let customTitleLabel = UILabel()
    let customSubtitleLabel = UILabel()
    
    //MARK: - Initialization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Initialization
    
    func setup() {
        setupCustomImageView()
        setupCustomTitleLabel()
        setupCustomSubtitleLabel()
    }
    
    func setupCustomImageView() {
        customImageView.image = UIImage(named: "image")
        contentView.addSubview(customImageView)
    }
    
    func setupCustomTitleLabel() {
        customTitleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        contentView.addSubview(customTitleLabel)
    }
    
    func setupCustomSubtitleLabel() {
        customSubtitleLabel.font = UIFont.systemFont(ofSize: 12)
        contentView.addSubview(customSubtitleLabel)
    }
    
    //MARK: - Lifecycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layout()
    }
    
    //MARK: - Layout
    
    func layout() {
        
    }
    
    func layoutImageView() {
        customImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
}
