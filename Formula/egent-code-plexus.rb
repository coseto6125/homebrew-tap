# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.8
#   4ddadb393efb673595754e960cd6a9c39558773d02d64aebb548a60761416286
#   7c72a2f00f5d3cb82067a940afd9341d4afce3bd9651a286de582c96aa8c4a4d
#
# Expected GitHub Release assets:
#   ecp-v0.14.8-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.8-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4ddadb393efb673595754e960cd6a9c39558773d02d64aebb548a60761416286"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7c72a2f00f5d3cb82067a940afd9341d4afce3bd9651a286de582c96aa8c4a4d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
