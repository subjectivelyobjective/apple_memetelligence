import Foundation
import SwiftAutoGUI

let NON_EXIT: Int = 0
let EXIT = 1

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
func ❤️() async -> Int {
    let login = try? await SwiftAutoGUI.locateonScreen("Resources/login.png")
    if let existing =
        try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
        {
        let actions: [Action] = [
            .move(to: CGPoint(x: existing.midX, y: existing.midY)),
            .wait(0.4),
            .doubleClick,
            .write(username),
            .keyShortcut([.returnKey]),
            .wait(0.45),
            .move(to: CGPoint(x: login.midX, login.midY)),
            .wait(0.3),
            .leftClick,
        ]
        await actions.execute()

        return EXIT
    } else {
        print "lol wtf m8"
        return NON_EXIT
    }
}