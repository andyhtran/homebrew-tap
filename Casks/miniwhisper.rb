cask "miniwhisper" do
  version "1.7.5"
  sha256 "ff17c704a5652b600556f47d506d2d4cb8343875ab261eedcddd42bfe8289942"

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
