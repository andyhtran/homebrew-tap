cask "copycat" do
  version "0.3.1"
  sha256 "01d2629d479f7275c6d8d6910f1c2d68148a6a703c14653b1f652616724c990d"

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
