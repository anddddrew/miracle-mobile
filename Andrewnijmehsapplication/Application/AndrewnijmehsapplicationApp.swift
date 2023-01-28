//
//  AndrewnijmehsapplicationApp.swift
//  Andrewnijmehsapplication

import SwiftUI

@main
struct AndrewnijmehsapplicationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            HomeScreenView()
        }
    }
}
