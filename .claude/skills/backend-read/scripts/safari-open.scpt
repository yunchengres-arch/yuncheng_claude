-- 在 Safari 前景視窗開新分頁並載入網址（不動既有分頁）
-- 用法：osascript safari-open.scpt <網址>
on run argv
  tell application "Safari"
    tell front window to set current tab to (make new tab with properties {URL:(item 1 of argv)})
  end tell
  return "opened"
end run
