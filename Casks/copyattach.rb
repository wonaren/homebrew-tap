cask "copyattach" do
  version "0.110.0"
  sha256 "c8a84a5a3722e90f975fffe936a54ad68e69ab2502abaeb1edc3324aec9325ba"

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
