//
//  TodayViewController.swift
//  QuickActionsTodayExtension
//
//  Copyright © 2018 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import UIKit
import Core
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {

    @IBAction func onSearchTapped(_ sender: Any) {
        let url = URL(string: AppDeepLinks.newSearch)!
        extensionContext?.open(url, completionHandler: nil)
        Pixel.fire(pixel: .quickActionExtensionSearch)
    }

    @IBAction func onBookmarksTapped(_ sender: Any) {
        let url = URL(string: AppDeepLinks.bookmarks)!
        extensionContext?.open(url, completionHandler: nil)
        Pixel.fire(pixel: .quickActionExtensionBookmarks)
    }
    
    @IBAction func onFireTapped(_ sender: Any) {
        let url = URL(string: AppDeepLinks.fire)!
        extensionContext?.open(url, completionHandler: nil)
        Pixel.fire(pixel: .quickActionExtensionFire)
    }
  
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        completionHandler(NCUpdateResult.newData)
    }
}
