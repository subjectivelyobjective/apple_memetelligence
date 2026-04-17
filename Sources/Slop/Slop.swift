23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:24: error: no exact matches in call to initializer 
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
   |                        |- error: no exact matches in call to initializer 
   |                        |- note: candidate has partially matching parameter list (consuming CGRect)
   |                        `- note: candidate has partially matching parameter list (consuming CGRect)
24 |     await [Action.clickAt(existing),
25 |         .write(Config.username),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:27: error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),
   |                           `- error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
25 |         .write(Config.username),
26 |         .keyShortcut([.returnKey]),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:30:26: error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
28 |         .move(to: center),
29 |     ]
30 |     await Action.clickAt(existing)
   |                          `- error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
31 | }
32 | 
[4/6] Compiling Slop Automation.swift
luis@mini Resources % clear

luis@mini Resources % swift build
Building for debugging...
error: emit-module command failed with exit code 1 (use -v to see invocation)
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: expressions are not allowed at the top level
31 | }
32 | 
33 | clickExistingUser()
   | `- error: expressions are not allowed at the top level

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: 'async' call in a function that does not support concurrency
31 | }
32 | 
33 | clickExistingUser()
   | `- error: 'async' call in a function that does not support concurrency

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: call can throw but is not marked with 'try'
31 | }
32 | 
33 | clickExistingUser()
   | |- error: call can throw but is not marked with 'try'
   | |- note: did you mean to use 'try'?
   | |- note: did you mean to handle error as optional value?
   | `- note: did you mean to disable error propagation?
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:67: error: expected 'else' after 'guard' condition
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
   |                                                                   `- error: expected 'else' after 'guard' condition
24 |     await [Action.clickAt(existing),
25 |         .write(Config.username),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: expressions are not allowed at the top level
31 | }
32 | 
33 | clickExistingUser()
   | `- error: expressions are not allowed at the top level

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: 'async' call in a function that does not support concurrency
31 | }
32 | 
33 | clickExistingUser()
   | `- error: 'async' call in a function that does not support concurrency

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: call can throw but is not marked with 'try'
31 | }
32 | 
33 | clickExistingUser()
   | |- error: call can throw but is not marked with 'try'
   | |- note: did you mean to use 'try'?
   | |- note: did you mean to handle error as optional value?
   | `- note: did you mean to disable error propagation?

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:27: error: cannot find 'existingUserRect' in scope
20 |     
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
   |                           `- error: cannot find 'existingUserRect' in scope
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:53: error: cannot find 'existingUserRect' in scope
20 |     
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
   |                                                     `- error: cannot find 'existingUserRect' in scope
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:5: error: cannot assign to value: 'existing' is a 'let' constant
19 | func clickExistingUser() async throws {
20 |     
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
   |     `- note: change 'let' to 'var' to make it mutable
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
   |     `- error: cannot assign to value: 'existing' is a 'let' constant
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:70: error: extra argument 'y' in call
20 |     
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
   |                                                                      `- error: extra argument 'y' in call
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:24: error: no exact matches in call to initializer 
21 |     let existing = try await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
   |                        |- error: no exact matches in call to initializer 
   |                        |- note: candidate has partially matching parameter list (consuming CGRect)
   |                        `- note: candidate has partially matching parameter list (consuming CGRect)
24 |     await [Action.clickAt(existing),
25 |         .write(Config.username),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:27: error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
22 |     existing = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
23 |     guard var center = CGRect?(x: existing.midX, y: existing.midY)
24 |     await [Action.clickAt(existing),
   |                           `- error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
25 |         .write(Config.username),
26 |         .keyShortcut([.returnKey]),

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:30:26: error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
28 |         .move(to: center),
29 |     ]
30 |     await Action.clickAt(existing)
   |                          `- error: cannot convert value of type 'CGRect?' to expected argument type 'CGPoint'
31 | }
32 | 
[5/7] Compiling Slop Automation.swift
luis@mini Resources % swift build
Building for debugging...
error: emit-module command failed with exit code 1 (use -v to see invocation)
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:19:38: error: consecutive statements on a line must be separated by ';'
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws? {}
   |                                      `- error: consecutive statements on a line must be separated by ';'
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:19:38: error: expected expression
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws? {}
   |                                      `- error: expected expression
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:20:5: error: statements are not allowed at the top level
18 | @MainActor
19 | func clickExistingUser() async throws? {}
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
   |     `- error: statements are not allowed at the top level
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:37:1: error: expressions are not allowed at the top level
35 | }}
36 | 
37 | clickExistingUser()
   | `- error: expressions are not allowed at the top level

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:47: error: value of optional type 'CGRect?' must be unwrapped to a value of type 'CGRect'
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
   |                                               |- error: value of optional type 'CGRect?' must be unwrapped to a value of type 'CGRect'
   |                                               |- note: coalesce using '??' to provide a default when the optional value contains 'nil'
   |                                               `- note: force-unwrap using '!' to abort execution if the optional value contains 'nil'
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:21: error: no exact matches in call to initializer 
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
   |                     |- error: no exact matches in call to initializer 
   |                     |- note: candidate has partially matching parameter list (consuming CGRect)
   |                     `- note: candidate has partially matching parameter list (consuming CGRect)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
26 |         await Action.move(to: existingUserRect)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:25:19: error: no exact matches in call to initializer 
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
   |                   |- error: no exact matches in call to initializer 
   |                   |- note: candidate has partially matching parameter list (consuming CGRect)
   |                   `- note: candidate has partially matching parameter list (consuming CGRect)
26 |         await Action.move(to: existingUserRect)
27 |         await Action.click(point)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:26:31: error: cannot convert value of type 'CGRect' to expected argument type 'CGPoint'
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
26 |         await Action.move(to: existingUserRect)
   |                               `- error: cannot convert value of type 'CGRect' to expected argument type 'CGPoint'
27 |         await Action.click(point)
28 |             .write(Config.username)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:27:22: error: type 'Action' has no member 'click'
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
26 |         await Action.move(to: existingUserRect)
27 |         await Action.click(point)
   |                      `- error: type 'Action' has no member 'click'
28 |             .write(Config.username)
29 |             .keyShortcut([.returnKey])

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:29:28: error: reference to member 'returnKey' cannot be resolved without a contextual type
27 |         await Action.click(point)
28 |             .write(Config.username)
29 |             .keyShortcut([.returnKey])
   |                            `- error: reference to member 'returnKey' cannot be resolved without a contextual type
30 |             .write(Config.pw)
31 |             .move(to: mid)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:20:37: error: 'async' call in a function that does not support concurrency
18 | @MainActor
19 | func clickExistingUser() async throws? {}
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
   |                                     `- error: 'async' call in a function that does not support concurrency
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:34: error: 'async' call in a function that does not support concurrency
19 | func clickExistingUser() async throws? {}
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
   |                                  `- error: 'async' call in a function that does not support concurrency
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:42: error: 'async' call in a function that does not support concurrency
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
   |                                          `- error: 'async' call in a function that does not support concurrency
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:9: error: 'await' in a function that does not support concurrency
31 |             .move(to: mid)
32 | 
33 |         await()
   |         `- error: 'await' in a function that does not support concurrency
34 |     }
35 | }}

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:37:1: error: 'async' call in a function that does not support concurrency
35 | }}
36 | 
37 | clickExistingUser()
   | `- error: 'async' call in a function that does not support concurrency

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:37:1: error: call can throw but is not marked with 'try'
35 | }}
36 | 
37 | clickExistingUser()
   | |- error: call can throw but is not marked with 'try'
   | |- note: did you mean to use 'try'?
   | |- note: did you mean to handle error as optional value?
   | `- note: did you mean to disable error propagation?
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:19:38: error: consecutive statements on a line must be separated by ';'
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws? {}
   |                                      `- error: consecutive statements on a line must be separated by ';'
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:19:38: error: expected expression
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws? {}
   |                                      `- error: expected expression
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:20:5: error: statements are not allowed at the top level
18 | @MainActor
19 | func clickExistingUser() async throws? {}
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
   |     `- error: statements are not allowed at the top level
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:37:1: error: expressions are not allowed at the top level
35 | }}
36 | 
37 | clickExistingUser()
   | `- error: expressions are not allowed at the top level

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:47: error: value of optional type 'CGRect?' must be unwrapped to a value of type 'CGRect'
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
   |                                               |- error: value of optional type 'CGRect?' must be unwrapped to a value of type 'CGRect'
   |                                               |- note: coalesce using '??' to provide a default when the optional value contains 'nil'
   |                                               `- note: force-unwrap using '!' to abort execution if the optional value contains 'nil'
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:21: error: no exact matches in call to initializer 
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
   |                     |- error: no exact matches in call to initializer 
   |                     |- note: candidate has partially matching parameter list (consuming CGRect)
   |                     `- note: candidate has partially matching parameter list (consuming CGRect)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
26 |         await Action.move(to: existingUserRect)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:25:19: error: no exact matches in call to initializer 
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
   |                   |- error: no exact matches in call to initializer 
   |                   |- note: candidate has partially matching parameter list (consuming CGRect)
   |                   `- note: candidate has partially matching parameter list (consuming CGRect)
26 |         await Action.move(to: existingUserRect)
27 |         await Action.click(point)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:26:31: error: cannot convert value of type 'CGRect' to expected argument type 'CGPoint'
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
26 |         await Action.move(to: existingUserRect)
   |                               `- error: cannot convert value of type 'CGRect' to expected argument type 'CGPoint'
27 |         await Action.click(point)
28 |             .write(Config.username)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:27:22: error: type 'Action' has no member 'click'
25 |         let mid = CGRect?(x: new_user.midX, y: new_user.midY)
26 |         await Action.move(to: existingUserRect)
27 |         await Action.click(point)
   |                      `- error: type 'Action' has no member 'click'
28 |             .write(Config.username)
29 |             .keyShortcut([.returnKey])

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:29:28: error: reference to member 'returnKey' cannot be resolved without a contextual type
27 |         await Action.click(point)
28 |             .write(Config.username)
29 |             .keyShortcut([.returnKey])
   |                            `- error: reference to member 'returnKey' cannot be resolved without a contextual type
30 |             .write(Config.pw)
31 |             .move(to: mid)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:20:37: error: 'async' call in a function that does not support concurrency
18 | @MainActor
19 | func clickExistingUser() async throws? {}
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
   |                                     `- error: 'async' call in a function that does not support concurrency
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:34: error: 'async' call in a function that does not support concurrency
19 | func clickExistingUser() async throws? {}
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
   |                                  `- error: 'async' call in a function that does not support concurrency
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:42: error: 'async' call in a function that does not support concurrency
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
22 |     if var existingUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
   |                                          `- error: 'async' call in a function that does not support concurrency
23 |         existingUserRect = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |         let point = CGRect?(x: existingUserRect.midX, y: existingUserRect.midY)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:9: error: 'await' in a function that does not support concurrency
31 |             .move(to: mid)
32 | 
33 |         await()
   |         `- error: 'await' in a function that does not support concurrency
34 |     }
35 | }}

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:37:1: error: 'async' call in a function that does not support concurrency
35 | }}
36 | 
37 | clickExistingUser()
   | `- error: 'async' call in a function that does not support concurrency

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:37:1: error: call can throw but is not marked with 'try'
35 | }}
36 | 
37 | clickExistingUser()
   | |- error: call can throw but is not marked with 'try'
   | |- note: did you mean to use 'try'?
   | |- note: did you mean to handle error as optional value?
   | `- note: did you mean to disable error propagation?

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:19:6: error: expected '{' in body of function declaration
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws? {}
   |      `- error: expected '{' in body of function declaration
20 |     if let newUserRect = try? await SwiftAutoGUI.locateOnScreen("Resources/new_user.png") {
21 |     if let new_user = try? await SwiftAutoGUI.locateOnScreen("Resources.new_user.png") {
[6/8] Compiling Slop Automation.swift
luis@mini Resources % swift run  
Building for debugging...
error: emit-module command failed with exit code 1 (use -v to see invocation)
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: extraneous '}' at top level
31 |         await()
32 |     }
33 | }
   | `- error: extraneous '}' at top level
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:33:1: error: extraneous '}' at top level
31 |         await()
32 |     }
33 | }
   | `- error: extraneous '}' at top level

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:9: error: cannot find 'existing' in scope
19 | func clickExistingUser() async throws{
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {}
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
   |         `- error: cannot find 'existing' in scope
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:32: error: cannot find 'existing' in scope
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {}
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
   |                                `- error: cannot find 'existing' in scope
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
24 |         Action.move(to: existing)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:50: error: cannot find 'existing' in scope
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {}
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
   |                                                  `- error: cannot find 'existing' in scope
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
24 |         Action.move(to: existing)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:22:59: error: extra argument 'y' in call
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {}
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
   |                                                           `- error: extra argument 'y' in call
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
24 |         Action.move(to: existing)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:30: error: cannot find 'existing' in scope
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
   |                              `- error: cannot find 'existing' in scope
24 |         Action.move(to: existing)
25 |         Action.click(point)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:48: error: cannot find 'existing' in scope
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
   |                                                `- error: cannot find 'existing' in scope
24 |         Action.move(to: existing)
25 |         Action.click(point)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:23:57: error: extra argument 'y' in call
21 |         existing = await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
   |                                                         `- error: extra argument 'y' in call
24 |         Action.move(to: existing)
25 |         Action.click(point)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:25: error: cannot find 'existing' in scope
22 |         let point = CGRect?(x: existing.midX, y: existing.midY)
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
24 |         Action.move(to: existing)
   |                         `- error: cannot find 'existing' in scope
25 |         Action.click(point)
26 |             .write(Config.username)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:25:16: error: type 'Action' has no member 'click'
23 |         let mid = CGRect?(x: existing.midX, y: existing.midY)
24 |         Action.move(to: existing)
25 |         Action.click(point)
   |                `- error: type 'Action' has no member 'click'
26 |             .write(Config.username)
27 |             .keyShortcut([.returnKey])

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:27:28: error: reference to member 'returnKey' cannot be resolved without a contextual type
25 |         Action.click(point)
26 |             .write(Config.username)
27 |             .keyShortcut([.returnKey])
   |                            `- error: reference to member 'returnKey' cannot be resolved without a contextual type
28 |             .write(Config.pw)
29 |             .move(to: mid)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:31:9: warning: no 'async' operations occur within 'await' expression
29 |             .move(to: mid)
30 | 
31 |         await()
   |         `- warning: no 'async' operations occur within 'await' expression
32 |     }
33 | }
[4/6] Compiling Slop Automation.swift
luis@mini Resources % swift run
Building for debugging...
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:20:92: error: expected '{' after 'if' condition
18 | @MainActor
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
   |                                                                                            `- error: expected '{' after 'if' condition
21 |         existing = async(operation: { Sendable }) {
22 |         await (

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:20:12: warning: value 'existing' was defined but never used; consider replacing with boolean test [#no-usage]
18 | @MainActor
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
   |            `- warning: value 'existing' was defined but never used; consider replacing with boolean test [#no-usage]
21 |         existing = async(operation: { Sendable }) {
22 |         await (
[4/6] Compiling Slop Automation.swift
luis@mini Resources % 
luis@mini Resources % swift run
Building for debugging...
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:13: error: expected ')' in expression list
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
22 |         await (
   |               `- note: to match this opening '('
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |             let point = CGRect?(x: existing.midX, y: existing.midY)
   |             `- error: expected ')' in expression list
25 |             let mid = CGRect?(x: existing.midX, y: existing.midY)
26 |             Action.move(to: existing)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:32:9: error: expected expression
30 |             .write(Config.pw)
31 |             .move(to: mid)
32 |         )
   |         `- error: expected expression
33 |     }
34 |     

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:36:2: error: expected '}' at end of brace statement
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws {
   |                                       `- note: to match this opening '{'
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   :
34 |     
35 |     await(existing)
36 | }
   |  `- error: expected '}' at end of brace statement

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:51: error: extra trailing closure passed in call
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   |                                                   `- error: extra trailing closure passed in call
22 |         await (
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:9: error: cannot assign to value: 'existing' is a 'let' constant
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   |         `- error: cannot assign to value: 'existing' is a 'let' constant
22 |         await (
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:20: error: no 'async' candidates produce the expected contextual result type 'CGRect'
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   |                    `- error: no 'async' candidates produce the expected contextual result type 'CGRect'
22 |         await (
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

_Concurrency.async:4:13: note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, Never>', not the expected contextual result type 'CGRect'
2 | @available(*, deprecated, message: "`async` was replaced by `Task.init` and will be removed shortly.")
3 | @discardableResult
4 | public func async<Success>(priority: TaskPriority? = nil, operation: __owned @escaping @isolated(any) @Sendable () async -> Success) -> Task<Success, Never> where Success : Sendable
  |             `- note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, Never>', not the expected contextual result type 'CGRect'

_Concurrency.async:4:13: note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, any Error>', not the expected contextual result type 'CGRect'
2 | @available(*, deprecated, message: "`async` was replaced by `Task.init` and will be removed shortly.")
3 | @discardableResult
4 | public func async<Success>(priority: TaskPriority? = nil, operation: __owned @escaping @isolated(any) @Sendable () async throws -> Success) -> Task<Success, any Error> where Success : Sendable
  |             `- note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, any Error>', not the expected contextual result type 'CGRect'

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:35:11: warning: expression of type 'CGRect' is unused [#no-usage]
33 |     }
34 |     
35 |     await(existing)
   |           `- warning: expression of type 'CGRect' is unused [#no-usage]
36 | }

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:35:5: warning: no 'async' operations occur within 'await' expression
33 |     }
34 |     
35 |     await(existing)
   |     `- warning: no 'async' operations occur within 'await' expression
36 | }
[4/6] Compiling Slop Automation.swift
luis@mini Resources % swift run
Building for debugging...
/Users/luis/repos/Slop/Sources/Slop/Automation.swift:24:13: error: expected ')' in expression list
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
22 |         await (
   |               `- note: to match this opening '('
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
24 |             let point = CGRect?(x: existing.midX, y: existing.midY)
   |             `- error: expected ')' in expression list
25 |             let mid = CGRect?(x: existing.midX, y: existing.midY)
26 |             Action.move(to: existing)

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:32:9: error: expected expression
30 |             .write(Config.pw)
31 |             .move(to: mid)
32 |         )
   |         `- error: expected expression
33 |     }
34 |     

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:36:2: error: expected '}' at end of brace statement
17 | 
18 | @MainActor
19 | func clickExistingUser() async throws {
   |                                       `- note: to match this opening '{'
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   :
34 |     
35 |     await(existing)
36 | }
   |  `- error: expected '}' at end of brace statement

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:51: error: extra trailing closure passed in call
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   |                                                   `- error: extra trailing closure passed in call
22 |         await (
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:9: error: cannot assign to value: 'existing' is a 'let' constant
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   |         `- error: cannot assign to value: 'existing' is a 'let' constant
22 |         await (
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:21:20: error: no 'async' candidates produce the expected contextual result type 'CGRect'
19 | func clickExistingUser() async throws {
20 |     if let existing = try? await SwiftAutoGUI.locateOnScreen("Resources/existing_user.png") {
21 |         existing = async(operation: { Sendable }) {
   |                    `- error: no 'async' candidates produce the expected contextual result type 'CGRect'
22 |         await (
23 |             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")

_Concurrency.async:4:13: note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, Never>', not the expected contextual result type 'CGRect'
2 | @available(*, deprecated, message: "`async` was replaced by `Task.init` and will be removed shortly.")
3 | @discardableResult
4 | public func async<Success>(priority: TaskPriority? = nil, operation: __owned @escaping @isolated(any) @Sendable () async -> Success) -> Task<Success, Never> where Success : Sendable
  |             `- note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, Never>', not the expected contextual result type 'CGRect'

_Concurrency.async:4:13: note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, any Error>', not the expected contextual result type 'CGRect'
2 | @available(*, deprecated, message: "`async` was replaced by `Task.init` and will be removed shortly.")
3 | @discardableResult
4 | public func async<Success>(priority: TaskPriority? = nil, operation: __owned @escaping @isolated(any) @Sendable () async throws -> Success) -> Task<Success, any Error> where Success : Sendable
  |             `- note: 'async(priority:operation:)' produces 'Task<(any Sendable).Type, any Error>', not the expected contextual result type 'CGRect'

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:35:11: warning: expression of type 'CGRect' is unused [#no-usage]
33 |     }
34 |     
35 |     await(existing)
   |           `- warning: expression of type 'CGRect' is unused [#no-usage]
36 | }

/Users/luis/repos/Slop/Sources/Slop/Automation.swift:35:5: warning: no 'async' operations occur within 'await' expression
33 |     }
34 |     
35 |     await(existing)
   |     `- warning: no 'async' operations occur within 'await' expression
36 | }
[3/5] Compiling Slop Automation.swift
luis@mini Resources % vim ../Sources 
luis@mini Resources % vim ../Sources/Slop/Automation.swift 

  1 import Foundation     
  2 import SwiftAutoGUI   
  3                       
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
 22         await (       
 23             SwiftAutoGUI.locateOnScreen("Resources/existing_user.png")
 24             let point = CGRect?(x: existing.midX, y: existing.midY)
 25             let mid = CGRect?(x: existing.midX, y: existing.midY)
 26             Action.move(to: existing)
 27             Action.click(point)
 28             .write(Config.username)
 29             .keyShortcut([.returnKey])
 30             .write(Config.pw)
 31             .move(to: mid)
 32         )             
                                                                                                            
