var existing = CGRect?(x: existing.midX, y: existing.midY)
await [Action.clickAt(existing),

let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
guard var wtf_m8 = CGRect?(x: existing.midX, y: existing.midY)
await [Action.clickAt(existing).write(Config.username),

existing = CGPoint(x: existing.midX, y: existing.midY)
  
  4 private enum Config { 
  5     static let username = "cymbalta"
  6     static let pw = ""                                                                                           
  7     static let preferredBrowser = "Safari"
  8 }                     
  9                       
 10 func runAppleScript(_ source: String) -> String? {
 11     try? SwiftAutoGUI.executeAppleScript(source)
 12 }                     
 13                       
 14 func isBrowser(appName: String) -> Bool {
 15     appName == Config.preferredBrowser
 16 }                     
 17                       
 18 @MainActor            
 19 func clickExistingUser() async throws {
 20     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
 21         existing = async(operation: { Sendable }) {      
 23             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
                   let point = CGRect?(x: existing.midX, y: existing.midY)
                  let mid = CGRect?(x: existing.midX, y: existing.midY)
                await Action.move(to: existing)
                await Action.click(point).write(Config.username).keyShortcut([.returnKey]).write(Config.pw).move(to: mid))
 }
