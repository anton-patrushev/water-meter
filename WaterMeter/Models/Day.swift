//
//  Day.swift
//  WaterMeter
//
//  Created by Anton Patrushev on 31.07.21.
//

import Foundation

struct Day: Hashable {
    var drinkedWater: [WaterSip]
    
    var didWaterWasDrinked: Bool {
        !self.drinkedWater.isEmpty
    }
    
    var overallWaterVolume: Int {
        self.drinkedWater.reduce(0, { acc, item in
            acc + item.volume
        })
    }
}

extension Day {
    init() {
        self.drinkedWater = []
    }
}
