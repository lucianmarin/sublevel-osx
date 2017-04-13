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

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        window.contentView = webView
        let url = URL(string: "https://sublevel.net/")
        let requested = URLRequest(url: url!)
        webView.load(requested)
        webView.allowsBackForwardNavigationGestures = true
        if #available(OSX 10.11, *) {
            webView.allowsLinkPreview = true
        }
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true;
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

}
