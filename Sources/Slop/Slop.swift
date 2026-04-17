import Foundation
import SwiftAutoGUI

var existing = CGRect?(x: existing.midX, y: existing.midY)
await [Action.clickAt(existing),

let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
guard var wtf_m8 = CGRect?(x: existing.midX, y: existing.midY)
await [Action.clickAt(existing).write(Config.username),

existing = CGPoint(x: existing.midX, y: existing.midY)
  
private enum Config { 
  static let username = "cymbalta"
  static let pw = "bigly"                                                                                           
  static let preferredBrowser = "Safari"
}                                        

       func runAppleScript(_ source: String) -> String? {
          try? SwiftAutoGUI.executeAppleScript(source)

func isBrowser(appName: String) -> Bool {
  appName == Config.preferredBrowser                    

  @MainActor            
func clickExistingUser() async throws {
  if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
    existing = async(operation: { Sendable }) {      
      SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
          let point = CGRect?(x: existing.midX, y: existing.midY)
          let midpoint = CGRect?(x: point.midX, y: point.midY)
                await Action.move(to: midpoint)
                await Action.click(point).write(Config.username).keyShortcut([.returnKey]).write(Config.pw).move(to: mid))
 }
