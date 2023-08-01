//
//  dcbattwebhook_swiftApp.swift
//  dcbattwebhook-swift
//
//  Created by Stella Luna on 11/10/22.
//

import SwiftUI
#if os(iOS) || os(watchOS)
import WatchConnectivity
#endif

public let prodName = "Battery Webhook"

#if os(tvOS)
public let version = "1.0b36 on tvOS"
#else
public let version = "1.0b36"
#endif

@main
struct dcbattwebhook_swiftApp: App {
    
    
    private lazy var sessionDelegator: SessionDelegator = {
        return SessionDelegator()
    }()

    init() {
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = sessionDelegator
            session.activate()
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            .onAppear {
            }
        }
    }
}
