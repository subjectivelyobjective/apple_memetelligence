import Foundation
import SwiftAutoGUI

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
                Action.wait(0.5)
                .move(to: CGPoint(x: (login.x / 2), y:(login.y /2))),
                .leftClick,
                .write("cymbalta")
            ];

            await actions.execute()

            let typing = [Action] = [
                .Action.wait(0.5)
                .move(to: CGPoint(existing_user.x / 2, existing_user.y / 2)),
                .wait(0.3),
            ];

            await typing.execute()
            await SwiftAutoGUI.doubleclick()
            print(existing)
    } else {
        print(String("stop stop stop."))
    }
}