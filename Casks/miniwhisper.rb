cask "miniwhisper" do
  version "1.5.3"
  sha256 "4bfab67c7a477d8a12e9af0c5a2952f99e977f9f02c724db4cf488aa06148df3"

  url "https://github.com/andyhtran/MiniWhisper/releases/download/v#{version}/MiniWhisper-#{version}.zip"
  name "MiniWhisper"
  desc "Voice-to-text transcription from the menu bar"
  homepage "https://github.com/andyhtran/MiniWhisper"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "MiniWhisper.app"

  zap trash: [
    "~/Library/Preferences/com.miniwhisper.app.plist",
    "~/Library/Application Support/MiniWhisper",
  ]
end
