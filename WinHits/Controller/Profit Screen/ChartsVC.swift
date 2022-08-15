//
//  ChartsViewController.swift
//  WinHits
//
//  Created by Демид Стариков on 21.07.2022.
//

import UIKit
import Charts

class ChartsViewController: UIViewController {

    @IBOutlet weak var lineChartView: LineChartView!
    
    let newObj = NewBet()
    
    var months = ["Feb","Feb", "Jan", "Feb"]
    var unitsSold = [0.0, 100.0, -200.0, 200.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setChart(dataPoints: months, values: unitsSold)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bgimage")
        self.view.insertSubview(backgroundImage, at: 0)
        lineChartView.backgroundColor = .tintColor
        }
    
    func setChart(dataPoints: [String], values: [Double]) {
            
            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(x: Double(i), y: values[i])
                dataEntries.append(dataEntry)
            }
            

            
        let lineChartDataSet = LineChartDataSet(entries: dataEntries, label: "Profits")
        let lineChartData = LineChartData(dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
    }

}
