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
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}



extension STListTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "STCollectionViewCell", for: indexPath)
        return cell
    }

//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        guard !seen[indexPath.row] else {
//            return
//        }
//        seen[indexPath.row] = true
//
//        cell.transform = CGAffineTransform(translationX: 450 * (CGFloat(indexPath.row + 1) * 0.1), y: 0)
//        UIView.animate(withDuration: 0.5) {
//            cell.transform = CGAffineTransform(translationX: 0, y: 0)
//        }
//    }
}


