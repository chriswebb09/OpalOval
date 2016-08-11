//
//  ScoreModel.swift
//  OpalOval
//
//  Created by Christopher Webb-Orenstein on 8/11/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import Foundation

struct ScoreModel {
    var scoreName: String
    var score:Int = 0
    var dataPoints: [String] = []
    
    init(name: String) {
        self.scoreName = name
    }
}

