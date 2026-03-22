cask "md-editor" do
  version "1.0.5"

  on_arm do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.0.5/MD.Editor_1.0.5_aarch64.dmg"
    sha256 "4be53e4bb142939909aef6f61dfa79d2aa3b7cbd989992dc7b25b700fc80d08f"
  end

  on_intel do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.0.5/MD.Editor_1.0.5_x64.dmg"
    sha256 "9700de4fba83498abb6ae739526a8d73e7c5b52ca26a7a6b85a57d848251ed5a"
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
