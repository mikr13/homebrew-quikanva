cask "quikanva" do
  version "0.4.0"
  sha256 "9c5312de06dbf6cd8e5d62f3394bca1372c27b3aed102e5fab52d42718d981ee"

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
