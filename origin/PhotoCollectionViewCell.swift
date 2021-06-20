//
//  PhotoCollectionViewCell.swift
//  origin
//
//  Created by Aanvi Koolwal on 6/19/21.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(named:"1.WhiteFlower"),
            UIImage(named:"2.SiennaSweater"),
            UIImage(named:"3.CKPride"),
            UIImage(named:"4.HakunaMatata"),
            UIImage(named:"5.GreenAero"),
            UIImage(named:"6.BlackShorts"),
        ].compactMap({$0})
        imageView.image = images.randomElement()
        
    }
    
    required init?(coder:NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}

