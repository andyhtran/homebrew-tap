cask "miniwhisper" do
  version "1.7.1"
  sha256 "445b87db5346388d305db40c842714bafe51ca5af44fd9b635307aed79e0c8dd"

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
