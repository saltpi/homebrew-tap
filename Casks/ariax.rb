cask "ariax" do
  version "1.0.5"
  sha256 "7031d51d71e6f617a8ef1a5b29b8a247e0ad582f404349a90d1437e001885b88"

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
