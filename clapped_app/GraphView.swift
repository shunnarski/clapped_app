//
//  GraphView.swift
//  clapped_app
//
//  Created by Alec Shunnarah on 2/6/21.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State var selectedPie: String = ""
    @State var selectedPie2: String = ""

    let sample = [ ChartCellModel(color: Color.red, value: 40, name: "Alec"),
                   ChartCellModel(color: Color.blue, value: 60, name: "Evan")]
    
    let sample2 = [ ChartCellModel(color: Color.red, value: 120, name: "Alec"),
                    ChartCellModel(color: Color.blue, value: 180, name: "Evan")]
    
    var body: some View {
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    PieChart(dataModel: ChartDataModel.init(dataModel: sample), onTap: {
                        dataModel in
                        if let dataModel = dataModel {
                            self.selectedPie = "Player: \(dataModel.name)\nGames Won: \(Int(dataModel.value))"
                        } else {
                            self.selectedPie = ""
                        }
                    })
                        .frame(width: 300, height: 200, alignment: .center)
                        .padding()
                    Text(selectedPie)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        Spacer()
                    PieChart(dataModel: ChartDataModel.init(dataModel: sample2), onTap: {
                        dataModel in
                        if let dataModel = dataModel {
                            self.selectedPie2 = "Player: \(dataModel.name)\nGames Won: \(Int(dataModel.value))"
                        } else {
                            self.selectedPie2 = ""
                        }
                    })
                        .frame(width: 300, height: 200, alignment: .center)
                        .padding()
                    Text(selectedPie2)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        Spacer()
                }
            }
    }
}

struct GraphView: View {
    var body: some View {
        ContentView()
    }
}

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        GraphView()
    }
}
