class Cct < Formula
  desc "Claude Code Tools: list, search, resume your Claude Code sessions"
  homepage "https://github.com/andyhtran/cct"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andyhtran/cct/releases/download/v#{version}/cct_Darwin_arm64.tar.gz"
      sha256 "900c3d7be5855d8ed0fecbe6da72ff71b96e1bcae054a6570207317389e77419"
    else
      url "https://github.com/andyhtran/cct/releases/download/v#{version}/cct_Darwin_x86_64.tar.gz"
      sha256 "534b918a42dabe5d41f8bda6778ce8f794c6741294e421adb060bd9ebbe19f1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andyhtran/cct/releases/download/v#{version}/cct_Linux_arm64.tar.gz"
      sha256 "98c4bcaaef02668c16582a913814b6145143684ba61863eddf0d4a9cb34c0e93"
    else
      url "https://github.com/andyhtran/cct/releases/download/v#{version}/cct_Linux_x86_64.tar.gz"
      sha256 "3d71a3406b61273b9315bcd05e2b7fc77246046c840f774ca8f9d1938e615425"
    end
  end

  def install
    bin.install "cct"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cct version")
  end
end
