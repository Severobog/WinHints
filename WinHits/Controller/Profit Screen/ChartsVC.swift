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
        
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
        let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
                
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
            

            
        let lineChartDataSet = LineChartDataSet(entries: dataEntries, label: "Units Sold")
        let lineChartData = LineChartData(dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
    }

}
