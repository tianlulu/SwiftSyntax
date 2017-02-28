//
//  VideoCell.swift
//  Demo3_PlayLocalVedio
//
//  Created by lushuishasha on 16/5/11.
//  Copyright © 2016年 lushuishasha. All rights reserved.
//

import UIKit
struct video {
    let image : String
    let title : String
    let source:String
}


class VideoCell: UITableViewCell {

    
    @IBOutlet weak var screenImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var sourceLabel: UILabel!
    
    override func setSelected(selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)
    }
    
}
