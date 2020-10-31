//
//  MainViewController.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 1/15/19.
//  Copyright © 2019 Pixelbleed, LLC. All rights reserved.
//

import UIKit
import MobileKit

class MainViewController: NiblessTemplateViewController<MainRootView>, TransitionAnimatable {
  
  private let transitionManager = AnimatorTransitionManager()
  
  // MARK: View Lifecycle
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  // MARK: Helpers
  
  // MARK: TransitionAnimatable Conformance
  
  func animators(with context: TransitionContext) -> [Animator] {
    return []
  }
  
  func setupTransition(with context: TransitionContext, delay: inout TimeInterval) {
    delay = 1.0
  }
  
  func finishTransition(with context: TransitionContext) {
  }
}
