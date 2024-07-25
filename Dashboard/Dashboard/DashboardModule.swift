//
//  DashboardModule.swift
//  Dashboard
//
//  Created by kukuzan on 25/07/2024.
//

import Foundation
import UIKit

public var bundle: Bundle {
    Bundle(for: DashboardModule.self)
}

public extension Bundle {
    static var accountBundle: Bundle {
        Bundle(for: DashboardModule.self)
    }
}

public class DashboardModule { 
    
    public init() {}
    
    public func dashboardSplashVC() -> SplashVC {
        return SplashVC()
    }
}
