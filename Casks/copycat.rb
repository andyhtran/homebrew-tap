cask "copycat" do
  version "1.1.1"
  sha256 "1f50952c1fd8829b74edd7d63bc4d05257e0acb60da2ef971d70aa621f48f024"

  url "https://github.com/andyhtran/CopyCat/releases/download/v#{version}/CopyCat-#{version}.zip"
  name "CopyCat"
  desc "Image-paste menu bar app for terminals"
  homepage "https://github.com/andyhtran/CopyCat"

  depends_on macos: :sonoma

  app "CopyCat.app"

  zap trash: [
    "~/Library/Preferences/com.copycat.macos.app.plist",
    "~/Library/Application Support/CopyCat",
    "~/.cache/copycat",
  ]
end
