//
//  Extensions.swift
//  Netflix Clone
//
//  Created by AcxGautamM2Pro on 13/05/24.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
