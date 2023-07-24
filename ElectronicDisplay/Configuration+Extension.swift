//
//  Configuration+Extension.swift
//  ElectronicDisplay
//
//  Created by JongHoon on 2023/07/24.
//

import UIKit

extension UIButton.Configuration {
    
    static func electronicStyle(
        title: String,
        baseForegroundColor: UIColor
    ) -> UIButton.Configuration {
        var config = UIButton.Configuration.filled()
        config.title = title
        config.baseForegroundColor = baseForegroundColor
        config.baseBackgroundColor = .white
        config.background.strokeColor = .black
        config.background.strokeWidth = 1.0
        config.cornerStyle = .medium
        
        return config
    }
    
}
