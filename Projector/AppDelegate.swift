//
//  AppDelegate.swift
//  Projector
//
//  Created by Becca James on 3/12/17.
//  Projector by Koen Voogd from the Noun Project
//  Copyright © 2017 Becca James. All rights reserved.
//

import Cocoa
import Foundation

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    @IBAction func upClicked(_ sender: NSMenuItem) {
        var request = URLRequest(url: URL(string: "http://projector.paultag.house/volume/increase")!)
        request.httpMethod = "GET"
    }
    @IBAction func downClicked(_ sender: NSMenuItem) {
        var request = URLRequest(url: URL(string: "http://projector.paultag.house/volume/decrease")!)
        request.httpMethod = "GET"
    }
    @IBAction func onClicked(_ sender: NSMenuItem) {
        var request = URLRequest(url: URL(string: "http://projector.paultag.house/power/on")!)
        request.httpMethod = "GET"
    }
    @IBAction func offClicked(_ sender: NSMenuItem) {
        var request = URLRequest(url: URL(string: "http://projector.paultag.house/power/off")!)
        request.httpMethod = "GET"
    }
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.menu = statusMenu
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // best for dark mode
        statusItem.image = icon
        statusItem.menu = statusMenu
    }

}

