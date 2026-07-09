# typed: false
# frozen_string_literal: true

class Jobclip < Formula
  desc "Search tech jobs across popular company career pages"
  homepage "https://github.com/andyhtran/jobclip"
  url "https://github.com/andyhtran/jobclip/releases/download/v0.1.4/jobclip_0.1.4_darwin_arm64.tar.gz"
  version "0.1.4"
  sha256 "4ace9524460e8e4d6e428a127cd5e4441c2d45ab8340d2053539f9b35fd22f97"
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
