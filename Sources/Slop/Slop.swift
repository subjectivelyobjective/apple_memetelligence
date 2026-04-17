// GPLv3.
// 1. Anyone can copy, modify and distribute this software.
// 2. You have to include the license and copyright notice with each and every distribution.
// 3. You can use this software privately.
// 4. You can use this software for commercial purposes.
// 5. If you dare build your business solely from this code, you risk open-sourcing the whole code base.
// 6. If you modify it, you have to indicate changes made to the code.
//7. Any modifications of this code base MUST be distributed with the same license, GPLv3.
// 8. This software is provided without warranty.
// 9. The software author or license can not be held liable for any damages inflicted by the software.
// 10. I like my girlfriend's feet.

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
        try? await SwiftAutoGUI.locateOnScreen("Resources/Images/login.png", confidence: 0.8)
            print(login)

            let actions: [Action] = [
                //.move(to: loginPt),
                .write(Config.user)
            ]

            await actions.execute()

            if let existing =
                try? await SwiftAutoGUI.locateOnScreen("Resources/Images/existing_user.png", confidence: 0.8) {
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
