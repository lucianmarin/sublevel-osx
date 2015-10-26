//
//  AppDelegate.swift
//  Sublevel
//
//  Created by lucian on 10/25/15.
//  Copyright © 2015 Lucian Marin. All rights reserved.
//

import Cocoa
import WebKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    
    var webView = WKWebView()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        window.contentView = webView
        let url = NSURL(string: "https://sublevel.net/")
        let requested = NSURLRequest(URL: url!)
        webView.loadRequest(requested)
    }

    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true;
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
}
