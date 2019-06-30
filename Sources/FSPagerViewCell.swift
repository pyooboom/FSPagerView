//
//  FSPagerViewCell.swift
//  FSPagerView
//
//  Created by Wenchao Ding on 17/12/2016.
//  Copyright © 2016 Wenchao Ding. All rights reserved.
//

import UIKit

open class FSPagerViewCell: UICollectionViewCell {
    
    open var imageViewFrame: CGRect?
    /// Returns the image view of the pager view cell. Default is nil.
    @objc
    open var imageView: UIImageView {
        let imageView = UIImageView(frame: .zero)
        self.contentView.addSubview(imageView)
        return imageView
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.contentView.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = imageViewFrame ?? CGRect(x: 15, y: 4, width: self.bounds.width - 2 * 15, height: 142)
    }
}
