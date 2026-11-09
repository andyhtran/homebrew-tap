# typed: false
# frozen_string_literal: true

class XiaohongshuCli < Formula
  desc "Headless Rednote (Xiaohongshu) CLI"
  homepage "https://github.com/andyhtran/xiaohongshu-cli"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/andyhtran/xiaohongshu-cli/releases/download/v0.1.0/xiaohongshu-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "4246580faaec1fa0be552eda9057651faa4081746256a778c375ba5511068e1f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/andyhtran/xiaohongshu-cli/releases/download/v0.1.0/xiaohongshu-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "6ef149a05d6488543ec825f2b26524024dd6a78985978d6a9018f6825c6e2164"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/andyhtran/xiaohongshu-cli/releases/download/v0.1.0/xiaohongshu-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "736b3e82befcb7145d41b3c5be899d89dfdde9de6c72e9841f248b18b2b3b5b9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/andyhtran/xiaohongshu-cli/releases/download/v0.1.0/xiaohongshu-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "59b40222e9365369e1c6571122cb3d31036746228f832c818dca2a073e357c9a"
    end
  end

  def install
    bin.install "xiaohongshu-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/xiaohongshu-cli version")
  end
end
