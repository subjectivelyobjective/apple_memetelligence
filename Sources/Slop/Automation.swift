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
func clickExistingUser() async throws? {
    let login = try? await SwiftAutoGUI.locateonScreen("Resources/login.png")
    if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
        await (
            SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
            let mid = CGRect?(x: existing.midX, y: existing.midY)
            let login = CGRect?(x: login.midX, y: login.midY)
            Action.move(to:mid)
            Action.click(point)
            .write(Config.username)
            .keyShortcut([.returnKey])
            .write(Config.pw)
            .move(to: login)
        )
    } else {
        print "i want coffee"
    }
}
