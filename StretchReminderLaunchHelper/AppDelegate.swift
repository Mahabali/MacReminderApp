//
//  AppDelegate.swift
//  StretchReminderLaunchHelper
//
//  Created by Mahabali on 4/12/17.
//  Copyright © 2017 Mahabali. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
//        var pathComponents = Bundle.main.bundleURL.pathComponents
//        let range = NSRange(location: 0, length: pathComponents.count - 4).location..<NSRange(location: 0, length: pathComponents.count - 4).location + NSRange(location: 0, length: pathComponents.count - 4).length
//        pathComponents = pathComponents[range]
//        let path = String.path(withComponents: pathComponents )
       NSWorkspace.shared().launchApplication("StretchReminder")
        NSApp.terminate(nil)

    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

