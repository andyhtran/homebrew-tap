cask "miniwhisper" do
  version "0.1.5"
  sha256 "9a00a2f6dfbdd7e54e4a6dc911471442685594c0f97c9432aac9b3169bb6d470"

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
