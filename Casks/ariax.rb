cask "ariax" do
  version "1.0.1"
  sha256 "d64f03e6143b0c5fc0f2452f723dbed0a194268c013366430b98626dd921bc06"

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
