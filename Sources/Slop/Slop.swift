import Foundation
import SwiftAutoGUI

let NON_EXIT: Int = 0
let EXIT = 1

private enum Config {
    static let username = "cymbalta"
    static let pw = "biglyalgebra04!"
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
    let login =
        try? await SwiftAutoGUI.locateOnScreen("Resources/login.png")

    if let existing =
        try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
        {
        let actions: [Action] = [

            .doubleClick(   at positionCGPoint(
                                x: existing.x / 2,
                                y: existing.y / 2),
                            button: MouseButton = .left)
            .write(Config.username),
            .keyShortcut([.returnKey]),
            .wait(0.45),
            .write(Config.pw)
            .move(to: CGPoint(x: (login.x / 2), y: (login.y / 2))),
            .wait(0.3),
            .leftClick,
        ]
        await actions.execute()

        return EXIT
    } else {
        return NON_EXIT
    }
}

//(await ❤️)