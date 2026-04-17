import Foundation
import SwiftAutoGUI

private enum Config {
    static let username = "cymbalta"
    static let pw = ""
    static let preferredBrowser = "Safari"
}

func runAppleScript(_ source: String) -> String? {
    try? SwiftAutoGUI.executeAppleScript(source)
}

func isBrowser(appName: String) -> Bool {
    appName == Config.preferredBrowser
}

@MainActor
func clickExistingUser() async throws {
    if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
        existing = async(operation: { Sendable }) {
        await (
            SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
            let point = CGRect?(x: existing.midX, y: existing.midY)
            let mid = CGRect?(x: existing.midX, y: existing.midY)
            Action.move(to: existing)
            Action.click(point)
            .write(Config.username)
            .keyShortcut([.returnKey])
            .write(Config.pw)
            .move(to: mid)
        )
    }
    
    await(existing)
}
