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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var months = [" ", "Jan", "Feb", "Mar", "Apr"]
        var unitsSold = [0.0, 100.0, 100.0, 1000.0, -100.0]
                
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
