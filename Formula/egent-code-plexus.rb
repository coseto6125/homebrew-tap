# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.5.0
#   e5bfd4d07fd6894ea9c4b05ded70b3de725faa24662cbab25dc6926baf71650a
#   3d5bc95983ca5a97655135aab40b8de1f749c1ffca26fb0f464274d3cfc57596
#
# Expected GitHub Release assets:
#   ecp-v0.5.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.5.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e5bfd4d07fd6894ea9c4b05ded70b3de725faa24662cbab25dc6926baf71650a"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3d5bc95983ca5a97655135aab40b8de1f749c1ffca26fb0f464274d3cfc57596"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
