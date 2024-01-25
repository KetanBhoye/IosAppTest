//
//  KetansapplicationApp.swift
//  Ketansapplication

import SwiftUI

@main
struct KetansapplicationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LoginSignupView()
        }
    }
}
