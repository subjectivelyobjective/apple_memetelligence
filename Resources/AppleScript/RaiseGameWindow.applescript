tell application "System Events"
    tell process "Safari"
        set frontmost to true
        set visible to false
        set visible to true
    end tell
end