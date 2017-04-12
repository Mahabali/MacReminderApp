//
//  StatusMenuController.swift
//  StretchReminder
//
//  Created by Mahabali on 4/12/17.
//  Copyright © 2017 Mahabali. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject,NSMenuDelegate {
    @IBOutlet weak var statusMenu: NSMenu!
    @IBOutlet weak var firstMenuItem : NSMenuItem?
    @IBOutlet weak var secondMenuItem  : NSMenuItem?
    @IBOutlet weak var thirdMenuItem  : NSMenuItem?
    @IBOutlet weak var fourthMenuItem  : NSMenuItem?
    @IBOutlet weak var fifthMenuItem : NSMenuItem?
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    var timer:Timer = Timer()
    let secondsValue = 60.0
    override func awakeFromNib() {
        statusItem.menu = statusMenu
        statusMenu.delegate = self
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
        let value = UserDefaults.standard.double(forKey: "default-time")
        if value > 0.0 {
            timer = Timer.scheduledTimer(timeInterval: value, target: self, selector: #selector(showNotification), userInfo: nil, repeats: true)
        }
        
        
    }
    
    @IBAction func tenMinutesClicked(_ sender: NSMenuItem){
        let tenMinutes = 10 * secondsValue
        self.selected(menu: sender, time: 5.0)
    }
    @IBAction func twentyMinutesClicked(_ sender: NSMenuItem){
        let twentyMinutes = 2 * secondsValue
        self.selected(menu: sender, time: twentyMinutes)
        
    }
    @IBAction func thirtyMinutesClicked(_ sender: NSMenuItem){
        let thirtyMinutes = 30 * secondsValue
        self.selected(menu: sender, time: thirtyMinutes)
        
    }
    @IBAction func fortyMinutesClicked(_ sender: NSMenuItem){
        
        let fortyMinutes = 40 * secondsValue
        self.selected(menu: sender, time: fortyMinutes)
        
    }
    @IBAction func fiftyMinutesClicked(_ sender: NSMenuItem){
        let fiftyMinutes = 50 * secondsValue
        self.selected(menu: sender, time: fiftyMinutes)
    }
    @IBAction func quitClicked(_ sender: NSMenuItem){
        timer.invalidate()
        NSApplication.shared().terminate(self)
    }
    
    func selected(menu item:NSMenuItem,time interval:Double){
        timer.invalidate()
        for menuItem  in statusMenu.items {
            if menuItem == item {
                item.state = NSOnState
            }
            else{
                menuItem.state = NSOffState
            }
        }
        statusMenu.update()
        UserDefaults.standard.set(interval, forKey: "default-time")
        timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(showNotification), userInfo: nil, repeats: true)
    }
    
    func showNotification()  {
        clearPreviousNotifications()
        let notification = NSUserNotification()
        notification.title = "Stretch Reminder"
        notification.subtitle = "Master ! Time to Stretch"
        notification.informativeText = ""
        notification.contentImage = NSImage(named: "notificationIcon")
        notification.soundName = NSUserNotificationDefaultSoundName
        NSUserNotificationCenter.default.deliver(notification)
        
    }
    
    func menuWillOpen(_ menu: NSMenu) {
        let value = UserDefaults.standard.double(forKey: "default-time")
        if value > 599.0 {
            var menuItemToSelect = value/(10*secondsValue) - 1
            menuItemToSelect = menuItemToSelect * 2
            let menuItem = statusMenu.item(at: Int(menuItemToSelect))
            self.selected(menu: menuItem!, time: value)
            
        }
    }
    
    func clearPreviousNotifications(){
       NSUserNotificationCenter.default.removeAllDeliveredNotifications()
        
    }
}
