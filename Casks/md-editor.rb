cask "md-editor" do
  version "1.0.4"

  on_arm do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.0.4/MD.Editor_1.0.4_aarch64.dmg"
    sha256 "3b8b05a5ff37851fe492f0fe1cc472766fe4d6535db2cd8da42d547cb93bd326"
  end

  on_intel do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.0.4/MD.Editor_1.0.4_x64.dmg"
    sha256 "d09ddd341358f09fedfaba9c1d703ab60fe985bb7774418f791610825602a116"
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
