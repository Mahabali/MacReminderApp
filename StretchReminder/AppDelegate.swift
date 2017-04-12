//
//  AppDelegate.swift
//  StretchReminder
//
//  Created by Mahabali on 4/12/17.
//  Copyright © 2017 Mahabali. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var isLaunchOnLogin: Bool = false

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

//    func launchOnLogin() -> Bool {
//        let loginItemsListRef: LSSharedFileListRef = LSSharedFileListCreate(nil, kLSSharedFileListSessionLoginItems, nil)
//        let snapshotRef: CFArrayRef = LSSharedFileListCopySnapshot(loginItemsListRef, nil)
//        let loginItems: [Any] = NSMakeCollectable(snapshotRef)
//        let bundleURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//        for item: Any in loginItems {
//            let itemRef: LSSharedFileListItemRef? = (item as? LSSharedFileListItemRef)
//            var itemURLRef: CFURLRef
//            if LSSharedFileListItemResolve(itemRef, 0, itemURLRef, nil) == noErr {
//                let itemURL: URL? = (NSMakeCollectable(itemURLRef) as? URL)
//                if itemURL?.isEqual(bundleURL) {
//                    return true
//                }
//            }
//        }
//        return false
//    }
//
//    func setLaunchOnLogin(_ launchOnLogin: Bool) {
//        let bundleURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//        let loginItemsListRef: LSSharedFileListRef = LSSharedFileListCreate(nil, kLSSharedFileListSessionLoginItems, nil)
//        if launchOnLogin {
//            let properties: [AnyHashable: Any]
//            properties = [ "com.apple.loginitem.HideOnLaunch" : Int(true) ]
//            let itemRef: LSSharedFileListItemRef? = LSSharedFileListInsertItemURL(loginItemsListRef, kLSSharedFileListItemLast, nil, nil, (bundleURL as? CFURLRef), (properties as? CFDictionaryRef), nil)
//            if itemRef != nil {
//                
//            }
//        }
//        else {
//            //  Converted with Swiftify v1.0.6309 - https://objectivec2swift.com/
//            var loginItemsListRef: LSSharedFileListRef = LSSharedFileListCreate(nil, kLSSharedFileListSessionLoginItems, nil)
//            var snapshotRef: CFArrayRef = LSSharedFileListCopySnapshot(loginItemsListRef, nil)
//            let loginItems: [Any] = NSMakeCollectable(snapshotRef)
//            for item: Any in loginItems {
//                var itemRef: LSSharedFileListItemRef? = (item as? LSSharedFileListItemRef)
//                var itemURLRef: CFURLRef = nil
//                if LSSharedFileListItemResolve(itemRef, 0, itemURLRef, nil) == noErr {
//                    var itemURL: URL? = (NSMakeCollectable(itemURLRef) as? URL)
//                    if itemURL?.isEqual(bundleURL) {
//                        LSSharedFileListItemRemove(loginItemsListRef, itemRef)
//                    }
//                }
//            }
//        }
//    }
//    
//    func forceStartup() {
//        //  Converted with Swiftify v1.0.6309 - https://objectivec2swift.com/
//        // Get the path of the app
//        var bundleURL = URL(fileURLWithPath: Bundle.main.bundlePath)
//        // Get the list you want to add the path to
//        var loginItemsListRef: LSSharedFileListRef = LSSharedFileListCreate(nil, kLSSharedFileListSessionLoginItems, nil)
//        // Set the app to be hidden on launch
//        let properties: [AnyHashable: Any] = ["com.apple.loginitem.HideOnLaunch": true]
//        // Add the item to the list
//        var itemRef: LSSharedFileListItemRef? = LSSharedFileListInsertItemURL(loginItemsListRef, kLSSharedFileListItemLast, nil, nil, (bundleURL as? CFURLRef), (properties as? CFDictionaryRef), nil)
//
//    }
}

