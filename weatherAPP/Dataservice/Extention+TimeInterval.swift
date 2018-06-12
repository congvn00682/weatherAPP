//
//  Extention+TimeInterval.swift
//  weatherAPP
//
//  Created by Cong on 5/25/18.
//  Copyright © 2018 Cong. All rights reserved.
//

import Foundation
extension TimeInterval {
    
    func dayWeek(identifier: String) -> String {
        let date = Date(timeIntervalSince1970: self)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        dateFormatter.locale = Locale(identifier: identifier)
        return dateFormatter.string(from: date)
    }
    
    func hourDay(identifier: String) -> String {
        let date = Date(timeIntervalSince1970: self)
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: identifier)
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }
}
