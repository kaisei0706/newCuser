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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得してデータを設定する
        let cell = stTableView.dequeueReusableCell(withIdentifier: "STListTableViewCell", for: indexPath) as! STListTableViewCell
        
        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
