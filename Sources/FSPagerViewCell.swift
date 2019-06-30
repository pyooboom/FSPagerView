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
    @objc open var imageView: UIImageView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    open func commonInit() {

        imageView = UIImageView(frame: imageViewFrame ?? CGRect(x: 15, y: 4, width: self.bounds.width - 2 * 15, height: 142))
        self.contentView.addSubview(imageView)
        
        self.contentView.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
    }
    
}
