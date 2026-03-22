cask "md-editor" do
  version "1.0.4"

  on_arm do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.0.4/MD.Editor_1.0.4_aarch64.dmg"
    sha256 "d7b7626375c4b67ba9df592cfb031b5ffa8a5dd100d93bd3614767b53c1eb930"
  end

  on_intel do
    url "https://github.com/rushabhpasad/md-editor/releases/download/v1.0.4/MD.Editor_1.0.4_x64.dmg"
    sha256 "95dce37cef3fd6b317369e85034f16d25fc60b712e193f07c26bd0df17b1970e"
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
