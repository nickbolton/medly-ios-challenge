//
//  AppContext+Locker.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 5/30/20.
//  Copyright © 2020 Pixelbleed LLC. All rights reserved.
//

import MobileKit

private let AppContextLockerKey = "AppContextLocker"

extension AppContext {

  var locker: Medly-ios-challengeLocker {
    if let item = lookupItem(AppContextLockerKey) as? Medly-ios-challengeLocker {
      return item
    } else {
      let defaultItem = Medly-ios-challengeLocker()
      register(item: defaultItem)
      return defaultItem
    }
  }

  func register(item: Medly-ios-challengeLocker) {
    registerItem(item, withKey: AppContextLockerKey)
  }
}
