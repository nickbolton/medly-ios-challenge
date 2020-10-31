//
//  Themes.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 2/19/19.
//  Copyright © 2019 Pixelbleed, LLC. All rights reserved.
//

import UIKit
import MobileKit

extension ThemeManager {
  static var defaultThemeName = "ThemeManager.default"
}

class DefaultTheme: DefaultDarkTheme {
  public override init() {
    super.init()
    self.defaultBackgroundColor = UIColor.defaultBackground
  }
}
