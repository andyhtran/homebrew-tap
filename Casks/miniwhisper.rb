cask "miniwhisper" do
  version "1.10.1"
  sha256 "443c38bfbcb0d11041a00edf9375f290d8b34afae4b3d2caee7880db1c5fd672"

  url "https://github.com/andyhtran/MiniWhisper/releases/download/v#{version}/MiniWhisper-#{version}.zip"
  name "MiniWhisper"
  desc "Voice-to-text transcription from the menu bar"
  homepage "https://github.com/andyhtran/MiniWhisper"

  auto_updates true
  # bare symbol means ">= Sonoma"
  depends_on macos: :sonoma

  app "MiniWhisper.app"

  zap trash: [
    "~/Library/Preferences/com.miniwhisper.app.plist",
    "~/Library/Application Support/MiniWhisper",
  ]
end
