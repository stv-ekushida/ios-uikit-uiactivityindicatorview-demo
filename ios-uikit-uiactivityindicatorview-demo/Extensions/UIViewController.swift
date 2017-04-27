//
//  UIViewController.swift
//  ios-uikit-uiactivityindicatorview-demo
//
//  Created by OkuderaYuki on 2017/04/28.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    /// タッチイベントを有効にする
    func allUserInteractionsEnabled() {
        self.view.subviews.forEach {
            $0.isUserInteractionEnabled = true
        }
        self.navigationController?.view.subviews.forEach {
            $0.isUserInteractionEnabled = true
        }
        self.tabBarController?.view.subviews.forEach {
            $0.isUserInteractionEnabled = true
        }
    }
    
    /// タッチイベントを無効にする
    func allUserInteractionsDisabled() {
        self.view.subviews.forEach {
            $0.isUserInteractionEnabled = false
        }
        self.navigationController?.view.subviews.forEach {
            $0.isUserInteractionEnabled = false
        }
        self.tabBarController?.view.subviews.forEach {
            $0.isUserInteractionEnabled = false
        }
    }
    
    /// 同時タップを無効にする
    func allExclusiveTouchEnabled() {
        self.view.subviews.forEach {
            $0.isExclusiveTouch = true
        }
        self.navigationController?.view.subviews.forEach {
            $0.isExclusiveTouch = true
        }
        self.tabBarController?.view.subviews.forEach {
            $0.isExclusiveTouch = true
        }
    }
}
