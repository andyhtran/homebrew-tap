cask "copycat" do
  version "1.1.0"
  sha256 "83bae70037bd806c3c1872ead5d73377021844ace56ba421ac19074dedd76953"

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
