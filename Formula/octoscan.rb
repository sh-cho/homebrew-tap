# typed: false
# frozen_string_literal: true

class Octoscan < Formula
  desc "Static vulnerability scanner for GitHub Actions workflows"
  homepage "https://github.com/synacktiv/octoscan"
  url "https://github.com/synacktiv/octoscan/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "31453c9dba6cc7c29f88b9728ae4b15911cce7b9064bfdfad2f2f276ec2ac26a"
  license "GPL-3.0-only"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"octoscan", "--help"
  end
end
