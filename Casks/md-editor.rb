cask "md-editor" do
  version "1.1.0"

  on_arm do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.1.0/MD.Editor_1.1.0_aarch64.dmg"
    sha256 "ab0129e7f7f7b1b7bb44e558a71b3b6e40f8db914f14185f474b64cdd9f03ee8"
  end

  on_intel do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.1.0/MD.Editor_1.1.0_x64.dmg"
    sha256 "708df36321fab89dd31fdc09d104f4544536fcacc3ecbe03b300452605c7e725"
  end

  name "MD Editor"
  desc "Lightweight cross-platform desktop Markdown editor with live split-pane preview"
  homepage "https://github.com/rushabhpasad/md-editor"

  app "MD Editor.app"

  zap trash: [
    "~/Library/Application Support/com.rpasad.md-editor",
    "~/Library/Preferences/com.rpasad.md-editor.plist",
    "~/Library/Saved Application State/com.rpasad.md-editor.savedState",
  ]
end
