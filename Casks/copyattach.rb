cask "copyattach" do
  version "0.114.1"
  sha256 "ef761403497855a11a5b64fc2804fd446942bb6b1bd2cc1920ff7b5acfb35180"

  url "https://github.com/wonaren/copy-attach/releases/download/v#{version}/CopyAttach-#{version}-macos-arm64.dmg"
  name "CopyAttach"
  desc "Lightweight clipboard history manager"
  homepage "https://copyattach.abovepast.shop/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "CopyAttach.app"

  uninstall quit: "cc.wonaren.copyattach"

  zap trash: [
    "~/Library/Application Support/CopyAttach",
    "~/Library/Caches/cc.wonaren.copyattach",
    "~/Library/Preferences/cc.wonaren.copyattach.plist",
    "~/Library/Preferences/com.example.copyattach.plist",
  ]
end
