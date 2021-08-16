//
//  STListTableViewCell.swift
//  Cuser
//
//  Created by 岩田海靖 on 2021/08/11.
//

import UIKit

class STListTableViewCell: UITableViewCell {

   
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        
    }
}


