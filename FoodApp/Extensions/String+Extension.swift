//
//  String+Extension.swift
//  FoodApp
//
//  Created by Alican TARIM on 27.12.2024.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
