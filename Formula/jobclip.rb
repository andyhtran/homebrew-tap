# typed: false
# frozen_string_literal: true

class Jobclip < Formula
  desc "Search tech jobs across popular company career pages"
  homepage "https://github.com/andyhtran/jobclip"
  url "https://github.com/andyhtran/jobclip/releases/download/v0.1.1/jobclip_0.1.1_darwin_arm64.tar.gz"
  version "0.1.1"
  sha256 "104b40ec88fd823f9ef01dd463b696ec21fd0e0895e193e55aac9311cd54b43a"
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
