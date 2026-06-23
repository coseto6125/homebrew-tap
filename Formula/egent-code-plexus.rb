# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.0
#   46d523948998e4e9ef37349d6d5e81b2f5efce98ec5e37a1fff6aad92251440e
#   1b006e3247e4c72ad20b323995ed9d593a00e11945e551c6fa6bde80720849d0
#
# Expected GitHub Release assets:
#   ecp-v0.8.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "46d523948998e4e9ef37349d6d5e81b2f5efce98ec5e37a1fff6aad92251440e"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1b006e3247e4c72ad20b323995ed9d593a00e11945e551c6fa6bde80720849d0"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
