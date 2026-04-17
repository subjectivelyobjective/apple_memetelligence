import Foundation
import SwiftAutoGUI

let NON_EXIT: Int = 0
let EXIT = 1

private enum Config {
    static let username = "cymbalta"
    static let pw = "bigly"
    static let preferredBrowser = "Safari"
}

func runAppleScript(_ source: String) -> String? {
    try? SwiftAutoGUI.executeAppleScript(source)
}

func isBrowser(appName: String) -> Bool {
    appName == Config.preferredBrowser
}

@MainActor
public func lovingMyself() async {
    let login =
        try? await SwiftAutoGUI.locateOnScreen("Resources/login.png", confidence: 0.75)

    if let existing =
        try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png", confidence: 0.75) {
            let actions: [Action] = [
                .wait(0.5),
                .move(to: CGPoint(login.midX, login.midY)),
                .leftClick,
                .write("cymbalta")
            ];

            await actions.execute()

            let typing = [Action] = [
                .wait(0.5),
                .move(to: CGPoint(existing_user.midX, existing_user.midY)),
                .leftClick,
                .wait(0.3),
                .leftClick
            ];

            await typing.execute()

            print(existing)
    } else {

        print(String("stop stop stop."))
    }
}