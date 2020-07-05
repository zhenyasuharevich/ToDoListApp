//
//  DateCell.swift
//  ToDoList
//
//  Created by Zhenya Suharevich on 05.07.2020.
//  Copyright © 2020 Zhenya Suharevich. All rights reserved.
//

import UIKit

class DateCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    
    func setDate(_ date: Date){
        label.text = date.formattedDate
    }
}
