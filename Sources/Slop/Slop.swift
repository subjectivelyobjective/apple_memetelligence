import Foundation
import SwiftAutoGUI

private enum Config {
    static let user: String = "cymbalta"
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
        try? await SwiftAutoGUI.locateOnScreen("Resources/login.png", confidence: 0.8)
            print(login)

            let actions: [Action] = [
                //.move(to: loginPt),
                .write(Config.user)
            ]

            await actions.execute()

            if let existing =
                try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png", confidence: 0.8) {
                    let x_coord: Int = login?!.x
                    let y_coord: Int = login?!.y

                    let typing: [Action] = [
                        .move(to: CGPoint(x: x_coord, y: y_coord))
                        .leftClick,
                        .keyShortcut([.returnKey])
                ]
                //.keyShortcut([.returnKey])
            } else {
                print(String("lol"))
            }
}

//: CGPoint(x: login.midX, y: login.midY)),