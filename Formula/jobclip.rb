# typed: false
# frozen_string_literal: true

class Jobclip < Formula
  desc "Search tech jobs across popular company career pages"
  homepage "https://github.com/andyhtran/jobclip"
  url "https://github.com/andyhtran/jobclip/releases/download/v0.1.3/jobclip_0.1.3_darwin_arm64.tar.gz"
  version "0.1.3"
  sha256 "941672dc000eb6e79f24a6f47ac07f04a73fd9b25247e5830390b453e4bf761c"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jobclip"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jobclip version")
  end
end
