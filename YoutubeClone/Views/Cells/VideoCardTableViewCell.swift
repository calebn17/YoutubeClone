//
//  VideoCardTableViewCell.swift
//  YoutubeClone
//
//  Created by Caleb Ngai on 5/27/22.
//

import UIKit

class VideoCardTableViewCell: UITableViewCell {

    static let identifier = "VideoCardTableViewCell"
    
    private let cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
