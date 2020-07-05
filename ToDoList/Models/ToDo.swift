//
//  ToDo.swift
//  ToDoList
//
//  Created by Zhenya Suharevich on 03.07.2020.
//  Copyright © 2020 Zhenya Suharevich. All rights reserved.
//

import UIKit

@objcMembers class ToDo: NSObject{
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    var image: UIImage?
    
    init(
        title:String = "",
        isComplete:Bool = false,
        dueDate: Date = Date(),
        notes: String? = nil,
        image: UIImage? = nil
        ){
        self.title=title
        self.isComplete=isComplete
        self.dueDate=dueDate
        self.notes=notes
        self.image = image
    }
    
}


extension ToDo{
    var keys: [String]{ //список названий
        return Mirror(reflecting: self).children.compactMap { $0.label }
    }
    var capitalizedkeys : [String]{
        return keys.map { $0.capitalizedWithSpaces }
    }
    
    var values: [Any?]{ //значение
        return Mirror(reflecting: self).children.map { $0.value }
    }
    
    override func copy() -> Any {
            let newToDo = ToDo(title: title,
                               isComplete: isComplete,
                               dueDate: dueDate,
                               notes: notes,
                               image: image?.copy() as? UIImage
        )
        return newToDo
    }
}

