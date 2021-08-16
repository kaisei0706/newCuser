//
//  STCollectionViewCell.swift
//  Cuser
//
//  Created by 岩田海靖 on 2021/08/15.
//

import UIKit

protocol CustomCollectionViewCellDelegate: AnyObject {
    func showDetail(cell: STCollectionViewCell)
}

class STCollectionViewCell: UICollectionViewCell {

    weak var delegate: CustomCollectionViewCellDelegate?
    
    @IBOutlet weak var stImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        stImageView.image = UIImage(named:"IMG_0527")
    }

}
