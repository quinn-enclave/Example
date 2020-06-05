//
//  UIViewController+Ext.swift
//  Example
//
//  Created by Quinn on 6/3/20.
//  Copyright © 2020 Quinn. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    func preloadView() {
        if let _ = view {}
    }
    
    
    
    
    func showErrorAlert(_ message: String) {
        let alertController = UIAlertController(title: "Error!", message: message, preferredStyle: UIAlertController.Style.alert) //Replace UIAlertControllerStyle.Alert by UIAlertControllerStyle.alert
        
        // Replace UIAlertActionStyle.Default by UIAlertActionStyle.default
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
        }
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showAlert(_ title: String, _ message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert) //Replace UIAlertControllerStyle.Alert by UIAlertControllerStyle.alert
        
        // Replace UIAlertActionStyle.Default by UIAlertActionStyle.default
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
            (result : UIAlertAction) -> Void in
        }
        
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func makeNavigationDefault(){
        self.navigationController?.navigationBar.barStyle       = UIBarStyle.black
        //self.navigationController?.navigationBar.barTintColor = UIColor.hexStringToUIColor(hex: ColorConstant.HeaderBG.rawValue)
        //self.navigationController?.navigationBar.tintColor = UIColor.hexStringToUIColor(hex: ColorConstant.HeaderText.rawValue)
    }
}
