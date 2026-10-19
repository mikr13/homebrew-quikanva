cask "quikanva" do
  version "0.4.1"
  sha256 "8ea796faac606c02e546ec9181ec2d499d9040a16a2da304489c385a70f84cc1"

  url "https://github.com/mikr13/quikanva/releases/download/v#{version}/Quikanva-#{version}.zip"
  name "Quikanva"
  desc "Sketch canvas that is one shortcut away"
  homepage "https://github.com/mikr13/quikanva"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Quikanva.app"

  uninstall quit: "com.mihirpandey.quikanva"

  zap trash: [
    "~/Library/Application Support/Quikanva",
    "~/Library/Caches/com.mihirpandey.quikanva",
    "~/Library/HTTPStorages/com.mihirpandey.quikanva",
    "~/Library/HTTPStorages/com.mihirpandey.quikanva.binarycookies",
    "~/Library/Preferences/com.mihirpandey.quikanva.plist",
  ]
end
