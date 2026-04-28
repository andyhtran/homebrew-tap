cask "copycat" do
  version "0.2.0"
  sha256 "c0f5620d35ea306ef60c98e11a27d17436511623125b656b0a3a6fd101c1d7d5"

  url "https://github.com/andyhtran/CopyCat/releases/download/v#{version}/CopyCat-#{version}.zip"
  name "CopyCat"
  desc "Image-paste menu bar app for terminals"
  homepage "https://github.com/andyhtran/CopyCat"

  depends_on macos: ">= :sonoma"

  app "CopyCat.app"

  zap trash: [
    "~/Library/Preferences/com.copycat.macos.app.plist",
    "~/Library/Application Support/CopyCat",
    "~/.cache/copycat",
  ]
end
