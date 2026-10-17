cask "quikanva" do
  version "0.3.4"
  sha256 "3721a55b6534f8ab5841a54e984f7f520ccbc0f0e64ba5fa9bbd972a296e4b88"

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
