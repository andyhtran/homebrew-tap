cask "copycat" do
  version "1.2.0"
  sha256 "55690e760be5f3671b41fdb81754ae47644d6dbc29f5c23fbab852c11b5f955f"

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
