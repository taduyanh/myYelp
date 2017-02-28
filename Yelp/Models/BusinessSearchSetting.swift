//
//  BusinessSearchSetting.swift
//  Yelp
//
//  Created by mac on 2/24/17.
//  Copyright © 2017 CoderSchool. All rights reserved.
//

import Foundation

struct BusinessSearchSetting {
    var term = ""
    var sort = YelpSortMode.bestMatched
    var categories = [String]()
    var deals: Bool?
    
    init() {
        self.deals = false
    }
}
