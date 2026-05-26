# typed: false
# frozen_string_literal: true

class Jobclip < Formula
  desc "Search tech jobs across popular company career pages"
  homepage "https://github.com/andyhtran/jobclip"
  url "https://github.com/andyhtran/jobclip/releases/download/v0.1.0/jobclip_0.1.0_darwin_arm64.tar.gz"
  version "0.1.0"
  sha256 "c2a7158d811cb6218396c101c2d7b3a1297e8d6eff73df9dddece59c6a8b588a"
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
