-- 在 Safari 中、網址含指定字串的分頁執行 JS 檔，回傳結果（只讀用）
-- 用法：osascript safari-js.scpt <JS檔路徑> <網址關鍵字>
on run argv
  set js to read POSIX file (item 1 of argv) as «class utf8»
  set urlKey to item 2 of argv
  tell application "Safari"
    repeat with w in windows
      repeat with t in tabs of w
        if URL of t contains urlKey then return do JavaScript js in t
      end repeat
    end repeat
  end tell
  return "NO_TAB_MATCHING:" & urlKey
end run
