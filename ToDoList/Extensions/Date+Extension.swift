//
//  Date+Extension.swift
//  ToDoList
//
//  Created by Zhenya Suharevich on 04.07.2020.
//  Copyright © 2020 Zhenya Suharevich. All rights reserved.
//

import Foundation

extension Date{
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }
}
