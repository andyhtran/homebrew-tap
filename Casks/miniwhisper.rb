cask "miniwhisper" do
  version "1.7.4"
  sha256 "7c5b2cdf0981184640c926468c44806e5e2d2bfcfc0e04f295d5131212d7afff"

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
