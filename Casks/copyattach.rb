cask "copyattach" do
  version "0.113.0"
  sha256 "0fc620030d468244bbfdcc4dae166d85e370bd69f61477a8aea1813488d7870e"

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
