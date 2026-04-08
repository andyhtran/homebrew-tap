cask "miniwhisper" do
  version "0.2.1"
  sha256 "d8d843032a05233895fcd5cb2aba0774cfe8dc41d50c0df9adc9a1226f49ce70"

  url "https://github.com/andyhtran/MiniWhisper/releases/download/v#{version}/MiniWhisper-#{version}.zip"
  name "MiniWhisper"
  desc "Voice-to-text transcription from the menu bar"
  homepage "https://github.com/andyhtran/MiniWhisper"

  depends_on macos: ">= :sonoma"

  app "MiniWhisper.app"

  zap trash: [
    "~/Library/Preferences/com.miniwhisper.app.plist",
    "~/Library/Application Support/MiniWhisper",
  ]
end
