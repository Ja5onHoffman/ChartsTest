//
//  ContentView.swift
//  ChartsTest
//
//  Created by Jason Hoffman on 12/10/21.
//

import SwiftUI

struct ContentView: View {
    
    let sampleData1: [Double] = [500.0, 200.0, 200.0, 600.0, 800.0, 100.0, 200.0, 300.0, 200.0]
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Device 1")
                        .font(.title2)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                }
                Text("200")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(RoundedRectangle(cornerRadius: 50)
                                    .fill(.blue))
                HStack {
                    Text("Device 2")                            .font(.title2)
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                }
                Text("200")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, minHeight: 60)
                    .background(RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.green))
            }
            TestChartView(
                powerData1: PowerData.chartPowerData(PowerData.powerSample),
                powerData2: PowerData.chartPowerData(PowerData.powerSample2)
                )
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
