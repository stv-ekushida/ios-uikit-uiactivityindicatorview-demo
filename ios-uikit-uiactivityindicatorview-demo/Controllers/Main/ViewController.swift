//
//  ViewController.swift
//  ios-uikit-uiactivityindicatorview-demo
//
//  Created by Kentaro on 2017/02/19.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var whiteLargeActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet private weak var whiteActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet private weak var grayActivityIndicatorView: UIActivityIndicatorView!
    
    @IBAction private func toggleHidesWhenStopped(_ sender: Any) {
        /*
         インジケーターのアニメーションが止まったときにhiddenにするかどうかを設定する
         （storyboardで設定可能）
         */
        whiteLargeActivityIndicatorView.hidesWhenStopped = !whiteLargeActivityIndicatorView.hidesWhenStopped
        whiteActivityIndicatorView.hidesWhenStopped = !whiteActivityIndicatorView.hidesWhenStopped
        grayActivityIndicatorView.hidesWhenStopped = !grayActivityIndicatorView.hidesWhenStopped
    }
    
    @IBAction private func activityIndicatorAction(_ sender: Any) {
        /*
         ActivityIndicatoがアニメーション中か判定
         （isAnimatingはstoryboardで設定可能
         　チェックを付けるとアニメーションしている状態で表示される）
         */
        if whiteLargeActivityIndicatorView.isAnimating {
            // アニメーションストップ
            whiteLargeActivityIndicatorView.stopAnimating()
        } else {
            // アニメーションスタート
            whiteLargeActivityIndicatorView.startAnimating()
        }
        
        if whiteActivityIndicatorView.isAnimating {
            whiteActivityIndicatorView.stopAnimating()
        } else {
            whiteActivityIndicatorView.startAnimating()
        }
        
        if grayActivityIndicatorView.isAnimating {
            grayActivityIndicatorView.stopAnimating()
        } else {
            grayActivityIndicatorView.startAnimating()
        }
    }
    
}

