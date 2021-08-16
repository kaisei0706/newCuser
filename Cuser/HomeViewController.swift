//
//  HomeViewController.swift
//  Cuser
//
//  Created by 岩田海靖 on 2021/08/11.
//

import UIKit
import Firebase

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // スタイリストのデータを格納する配列
    var stArray: [STData] = []
    
    @IBOutlet weak var stTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        stTableView.delegate = self
        stTableView.dataSource = self
        // Do any additional setup after loading the view.
        
        // カスタムセルを登録する
        let nib = UINib(nibName: "STListTableViewCell", bundle: nil)
        stTableView.register(nib, forCellReuseIdentifier: "STListTableViewCell")
        
//        stTableView.estimatedRowHeight = 1000  // セルの高さの見積もり
//        stTableView.rowHeight = UITableView.automaticDimension
//        stTableView.backgroundColor = UIColor.rgb(red: red!, green: green!, blue: blue!)

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        guard let cell = cell as? STListTableViewCell else { return }
        
        //ShopTableViewCell.swiftで設定したメソッドを呼び出す
        cell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得してデータを設定する
        let cell = stTableView.dequeueReusableCell(withIdentifier: "STListTableViewCell", for: indexPath) as! STListTableViewCell
        
        return cell
    }

}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "STCollectionViewCell", for: indexPath) as! STCollectionViewCell
        cell.stImageView.image = UIImage(named:"IMG_0527")
        return cell

    }
}
