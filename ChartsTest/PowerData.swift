//
//  PowerData.swift
//  ChartsTest
//
//  Created by Jason Hoffman on 12/14/21.
//

import Foundation
import Charts


struct PowerData {
    var watts: Double
    var time: String {
        let d = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: d)
    }
    
    static func chartPowerData(_ powerArray: [PowerData]) -> [ChartDataEntry] {
        return powerArray.enumerated().map { (index, element) in
            ChartDataEntry(x: Double(index), y: element.watts)
        }
    }
    
    static func powerDataTwo(_ powerArray: [PowerData]) -> [ChartDataEntry] {
        return powerArray.enumerated().map { (index, element) in
            ChartDataEntry(x: Double(index), y: element.watts)
        }
    }
    
    static var powerSample: [PowerData] = [
        PowerData(watts: 200.0),
        PowerData(watts:205.0),
        PowerData(watts: 210.0),
        PowerData(watts: 210.0),
        PowerData(watts: 215.0),
        PowerData(watts: 220.0),
        PowerData(watts: 225.0),
        PowerData(watts: 220.0),
        PowerData(watts: 220.0),
        PowerData(watts: 215.0),
        PowerData(watts: 210.0),
        PowerData(watts: 210.0),
        PowerData(watts: 205.0),
        PowerData(watts: 200.0),
        PowerData(watts: 190.0),
        PowerData(watts: 180.0),
        PowerData(watts: 180.0),
        PowerData(watts: 190.0),
        PowerData(watts: 195.0),
        PowerData(watts: 190.0)
    ]
    
    static var powerSample2: [PowerData] = [
        PowerData(watts: 210.0),
        PowerData(watts:215.0),
        PowerData(watts: 220.0),
        PowerData(watts: 205.0),
        PowerData(watts: 210.0),
        PowerData(watts: 215.0),
        PowerData(watts: 230.0),
        PowerData(watts: 225.0),
        PowerData(watts: 215.0),
        PowerData(watts: 210.0),
        PowerData(watts: 215.0),
        PowerData(watts: 205.0),
        PowerData(watts: 200.0),
        PowerData(watts: 190.0),
        PowerData(watts: 185.0),
        PowerData(watts: 175.0),
        PowerData(watts: 185.0),
        PowerData(watts: 185.0),
        PowerData(watts: 200.0),
        PowerData(watts: 200.0)
    ]
}
