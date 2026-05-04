cask "ariax" do
  version "1.0.7"
  sha256 "6cd6d7af6fae1c8bf8493f7976b52ec2d9031c09d6f2d6b1fc911167f9feef24"

  url "https://github.com/saltpi/Aria.X/releases/download/#{version}/AriaX.dmg"
  name "AriaX"
  desc "Aria2 download manager for macOS"
  homepage "https://ariax.saltpi.cn"

  livecheck do
    url "https://github.com/saltpi/Aria.X/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

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
