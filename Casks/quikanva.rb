cask "quikanva" do
  version "0.3.5"
  sha256 "f9b73fc657d477798ceaa5f02efd9d6ac846cf53554d3315122cac2d5bfef659"

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
