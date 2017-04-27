//
//  SecondViewController.swift
//  ios-uikit-uiactivityindicatorview-demo
//
//  Created by OkuderaYuki on 2017/04/27.
//  Copyright © 2017年 Kentao Taguchi. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var activityIndicatorButton: UIButton!
}

// MARK: - actions
private extension SecondViewController {
    
    @IBAction func didTapActivityIndicatorButton(_ sender: Any) {
        
        // ボタンを非表示にする
        activityIndicatorButton.isHidden = true
        
        // アニメーション中でなければ、アニメーションをスタートする
        if !activityIndicatorView.isAnimating {
            activityIndicatorView.startAnimating()
        }
        
        // ナビバー、タブバーも含めて、全てのViewのタップイベントを無効にする
        self.allUserInteractionsDisabled()
        
        // 3.0秒後処理を実行する
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] _ in
            // 全てのViewのタップイベントを有効にする
            self?.allUserInteractionsEnabled()
            
            // Indicatorのアニメーションをストップする (且つ非表示にする)
            self?.activityIndicatorView.stopAnimating()
            
            // 非表示にしていたボタンを表示する
            self?.activityIndicatorButton.isHidden = false
        }
    }
}
