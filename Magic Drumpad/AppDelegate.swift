//
//  AppDelegate.swift
//  Magic Drumpad
//
//  Created by Damiaan on 18/06/17.
//  Copyright © 2017 Damiaan Dufaux. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
		return true
	}
	
	func applicationWillResignActive(_ notification: Notification) {
		if let controller = NSApplication.shared().windows.first?.contentViewController as? ViewController, controller.lockButton.state == NSOnState {
			controller.unlockMouse()
			controller.lockButton.state = NSOffState
		}
	}
}
