# typed: false
# frozen_string_literal: true

class Slacky < Formula
  desc "Read-only Slack search for fast context, built for people and agents"
  homepage "https://github.com/andyhtran/slacky"
  url "https://github.com/andyhtran/slacky.git", branch: "main"
  version "0.1.0"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags", "-s -w -X main.version=#{version}", "-o", bin/"slacky", "./cmd/slacky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slacky version")
  end
end
