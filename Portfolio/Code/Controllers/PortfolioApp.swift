//
//  PortfolioApp.swift
//  Portfolio
//
//  Created by Rohit Saini on 14/08/21.
//

import SwiftUI

@main
struct PortfolioApp: App {
    var body: some Scene {
        WindowGroup {
            PortfolioView(appModel: AppModel())
        }
    }
}
