//
//  medly-ios-challengeWireframe.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 1/15/19.
//  Copyright © 2019 Pixelbleed, LLC. All rights reserved.
//

import UIKit
import MobileKit

class Medly-ios-challengeWireframe: Wireframe {
  
  private var mainViewController = MainViewController()
  
  override func wireApplication(window: UIWindow) {
    super.wireApplication(window: window)
    window.rootViewController = mainViewController
  }
}
