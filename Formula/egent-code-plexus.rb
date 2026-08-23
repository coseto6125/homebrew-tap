# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.10.0
#   9f73a8c4877cd577c9fb5bca1df6a053a88b81a1224181527512ae6fa0026f15
#   10dd91c038472b8c2492f0628b7897f5c7d8b84329fe05c13929927fadf74284
#
# Expected GitHub Release assets:
#   ecp-v0.10.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.10.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9f73a8c4877cd577c9fb5bca1df6a053a88b81a1224181527512ae6fa0026f15"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "10dd91c038472b8c2492f0628b7897f5c7d8b84329fe05c13929927fadf74284"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
