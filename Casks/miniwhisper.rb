cask "miniwhisper" do
  version "1.7.0"
  sha256 "891e7c35114f53d75b7c63d01e009c6cfa662cfa6f301997c5139e3346ed44c0"

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
