//
//  medly-ios-challengeBootstrap.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 1/15/19.
//  Copyright © 2019 Pixelbleed, LLC. All rights reserved.
//

import UIKit
import MobileKit
import AlamofireNetworkActivityLogger

class Medly-ios-challengeBootstrap: Bootstrap {

    override func initialize(app: UIApplication,
                             launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Result {

      Environment.shared.location = Environment.Location(rawValue: (Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String ?? "")) ?? .development // TODO: default to .production

      initializeLogger()
      initializeData()
      initializeThemes()
      initializeNetworkLogger()

      AppContext.shared.locker.hasPreviouslyRun = true

      return super.initialize(app: app, launchOptions: launchOptions)
    }

    private func initializeData() {
      if !AppContext.shared.locker.hasPreviouslyRun,
        !AppContext.shared.locker.hasSetInitialData {
      }
      AppContext.shared.locker.hasSetInitialData = true
    }

    private func initializeThemes() {
      ThemeManager.shared.registerTheme(DefaultTheme())
      ThemeManager.shared.initialize()
    }


    private func initializeNetworkLogger() {
      switch Environment.shared.location {
      case .development:
        NetworkActivityLogger.shared.level = .debug
        NetworkActivityLogger.shared.startLogging()
//        SiestaLog.Category.enabled = .common
      case .production:
        NetworkActivityLogger.shared.level = .off
      }
    }

    private func initializeLogger() {
      switch Environment.shared.location {
      case .development:
        Logger.shared.logLevel = .verbose
      case .production:
        Logger.shared.logLevel = .error
      }
    }
}
