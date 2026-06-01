# typed: false
# frozen_string_literal: true

class Jobclip < Formula
  desc "Search tech jobs across popular company career pages"
  homepage "https://github.com/andyhtran/jobclip"
  url "https://github.com/andyhtran/jobclip/releases/download/v0.1.2/jobclip_0.1.2_darwin_arm64.tar.gz"
  version "0.1.2"
  sha256 "a72415e5535e7a13a2a843a7fdbf0333137a0ef4facf16ecc17cb68c1a823fde"
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
