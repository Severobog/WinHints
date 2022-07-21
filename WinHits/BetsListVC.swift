////
////  BetsListVC.swift
////  WinHits
////
////  Created by Демид Стариков on 18.07.2022.
////
//
//import UIKit
//
//class BetsListVC: UITableViewController {
//
//    let betsArray = ["Bet #1",
//                     "Bet #2",
//                     "Bet #3",
//                     "Bet #4",
//                     "Bet #5",
//                     "Bet #6"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
//
//    // MARK: - Table view data source
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return betsArray.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Title", for: indexPath) as! BetsCell
//
//
//        cell.backgroundColor = UIColor(red: 0.159, green: 0.522, blue: 0.733, alpha: 1)
//
//        let randomInt = Int.random(in: 1000..<10000)
//        cell.intLabel.textColor = .white
//        cell.intLabel.text = "+\(randomInt)"
//        cell.mainLabel.textColor = .white
//        cell.mainLabel.text = "\(betsArray[indexPath.row])"
//        cell.detailLabel.textColor = .white
//        cell.detailLabel.text = "Bet result: "
//        cell.detailLabel.font = UIFont.systemFont(ofSize: 12)
//
//        if randomInt > 0 {
//            cell.winOrLoseLabel.textColor = .green
//            cell.winOrLoseLabel.text = "WIN"
//        } else {
//            cell.winOrLoseLabel.textColor = .red
//            cell.winOrLoseLabel.text = "LOSE"
//        }
//        return cell
//    }
//
//
//}
