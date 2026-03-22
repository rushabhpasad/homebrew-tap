cask "md-editor" do
  version "1.0.2"

  on_arm do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v#{version}/MD.Editor_#{version}_aarch64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  on_intel do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v#{version}/MD.Editor_#{version}_x64.dmg"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
