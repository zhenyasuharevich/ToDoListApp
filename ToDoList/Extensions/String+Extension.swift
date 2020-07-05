//
//  String+Extension.swift
//  ToDoList
//
//  Created by Zhenya Suharevich on 04.07.2020.
//  Copyright © 2020 Zhenya Suharevich. All rights reserved.
//

extension String {
    var capitalizedWithSpaces: String {
        let withSpace = reduce("") { result, character in
            character.isUppercase ? "\(result) \(character)" : "\(result)\(character)"
        }
        return withSpace.capitalized
    }
}
