cask "miniwhisper" do
  version "0.1.0"
  sha256 "30fec12c10fa40729b591868643d3e94e6cd4faacc0f32dcce7663178419b442"

  url "https://github.com/andyhtran/MiniWhisper/releases/download/v#{version}/MiniWhisper-#{version}.zip",
      verified: "github.com/andyhtran/MiniWhisper/"
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
