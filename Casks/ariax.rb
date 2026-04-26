cask "ariax" do
  version "1.0.2"
  sha256 "d1cac5cc1919931c1030b86627393b2a0a84f099299beee5cd6d74f94821b3da"

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
