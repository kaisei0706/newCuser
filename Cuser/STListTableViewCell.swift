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
        // xibファイルの登録
        let nib = UINib(nibName: "STCollectionViewCell", bundle: nil) // カスタムセルクラス名で`nib`を作成する
        collectionView.register(nib, forCellWithReuseIdentifier: "STCollectionViewCell")
        
    }
    
    func setCollectionViewDataSourceDelegate
            <D: UICollectionViewDataSource & UICollectionViewDelegate>
            (dataSourceDelegate: D, forRow row: Int) {

            collectionView.delegate = dataSourceDelegate
            collectionView.dataSource = dataSourceDelegate
            collectionView.reloadData()

        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}


