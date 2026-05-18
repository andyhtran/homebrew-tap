# typed: false
# frozen_string_literal: true

class SparkleTools < Formula
  desc "CLI tools for Sparkle 2 app updates (generate_keys, generate_appcast, sign_update)"
  homepage "https://sparkle-project.org"
  version "2.9.2"
  license "MIT"

  on_macos do
    url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.xz"
    sha256 "1cb340cbbef04c6c0d162078610c25e2221031d794a3449d89f2f56f4df77c95"
  end

  def install
    bin.install "bin/generate_keys"
    bin.install "bin/generate_appcast"
    bin.install "bin/sign_update"
    bin.install "bin/BinaryDelta"
  end

  test do
    assert_match "generate_keys", shell_output("#{bin}/generate_keys -h 2>&1", 1)
  end
end
