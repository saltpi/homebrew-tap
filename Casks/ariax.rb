cask "ariax" do
  version "1.0.4"
  sha256 "37b41563903457d2ae4d6da0f132ec4cb2fc76966be7147c88f03db6834772ce"

  url "https://github.com/saltpi/Aria.X/releases/download/#{version}/AriaX.zip"
  name "AriaX"
  desc "Aria2 download manager for macOS"
  homepage "https://github.com/saltpi/Aria.X"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "AriaX.app"

  zap trash: [
    "~/Library/Application Scripts/cn.saltpi.app.AriaX",
    "~/Library/Application Scripts/group.cn.saltpi.app.AriaX",
    "~/Library/Containers/cn.saltpi.app.AriaX",
    "~/Library/Group Containers/group.cn.saltpi.app.AriaX",
  ]
end
