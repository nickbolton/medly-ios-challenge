//
//  MainRootView.swift
//  medly-ios-challenge
//
//  Created by Nick Bolton on 3/6/19.
//  Copyright © 2019 Pixelbleed, LLC. All rights reserved.
//

import UIKit
import MobileKit

class MainRootView: NiblessView {
  
  private let loaderView = LoaderView(image: UIImage(named: "spinner"))
  private let loaderContainer = UIView()
  
  // MARK: Begin View Hierarchy Construction
  
  override func initializeViews() {
    super.initializeViews()
    backgroundColor = UIColor.defaultBackground
    initializeLoaderContainer()
  }
  
  override func constructHierarchy() {
    super.constructHierarchy()
    addSubview(loaderContainer)
  }
  
  override func activateConstraints() {
    super.activateConstraints()
    constrainLoaderContainer()
  }
  
  // MARK: Loader Container
  
  private func initializeLoaderContainer() {
    loaderContainer.translatesAutoresizingMaskIntoConstraints = false
  }
  
  private func constrainLoaderContainer() {
    loaderContainer.expand()
  }
  
  // MARK: Helpers
  
  func showLoadingView() {
    loaderView.show(in: loaderContainer, ignoreInteractionEvents: false)
  }
  
  func hideLoadingView() {
    loaderView.hide(from: loaderContainer)
  }
}
