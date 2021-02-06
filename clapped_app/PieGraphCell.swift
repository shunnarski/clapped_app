//
//  PieGraphCell.swift
//  clapped_app
//
//  Created by Alec Shunnarah on 2/6/21.
//

import Foundation
import SwiftUI

struct PieChartCell: Shape {
    let startAngle: Angle
    let endAngle: Angle
    
    // path function writes the outline of the 2D pie chart
    func path(in rect: CGRect) -> Path {
        // rect is the rectangular area the pie chart will take up
        // origin of the rect is the bottom left corner, to get center we add with width and subtract 2
        let center = CGPoint.init(x: (rect.origin.x + rect.width)/2, y: (rect.origin.y + rect.height)/2)
        let radii = min(center.x, center.y)
        
        // actually drawing the circle
        let path = Path { p in
            p.addArc(center: center,
                     radius: radii,
                     startAngle: startAngle,
                     endAngle: endAngle,
                     clockwise: false)
            p.addLine(to: center)
        }
        return path
    }
}
