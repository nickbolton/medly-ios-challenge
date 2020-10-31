//
//  medly-ios-challengeLocker.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 1/15/19.
//  Copyright © 2019 Pixelbleed, LLC. All rights reserved.
//

import UIKit
import MobileKit

class Medly-ios-challengeLocker: BaseLocker {
  
  convenience init() {
    self.init(name: NSStringFromClass(Medly-ios-challengeLocker.self))
  }

  required init(name: String) {
    super.init(name: name)
    setDefaults()
    LockerManager.shared.registerLocker(self)
  }

  func logOut() {
  }

  private let hasPreviouslyRunKey = "hasPreviouslyRun"
  var hasPreviouslyRun: Bool {
    get {
      return UserDefaults.standard.bool(forKey: hasPreviouslyRunKey)
    }
    set {
      UserDefaults.standard.set(newValue, forKey: hasPreviouslyRunKey)
      UserDefaults.standard.synchronize()
    }
  }

  private let hasSetInitialDataKey = "hasSetInitialData"
  var hasSetInitialData: Bool {
    get {
      return UserDefaults.standard.bool(forKey: hasSetInitialDataKey)
    }
    set {
      UserDefaults.standard.set(newValue, forKey: hasSetInitialDataKey)
      UserDefaults.standard.synchronize()
    }
  }

  override func wipeData() {
    super.wipeData()
  }

  func handleLogOut() {
    wipeData()
  }

  // MARK: Helpers

  private func setDefaults() {
    UserDefaults.standard.register(defaults:
      [:])
  }
}
