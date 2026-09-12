# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.0
#   dc7a2d7b78c504ce0d5227480c6b3c11d54df19c55b4f6a4c78cca04c839f125
#   ee3ebd14bfe4c624b84987619300a6d1f9c1c7475fc24c1f373b0bbbdc7b67e2
#
# Expected GitHub Release assets:
#   ecp-v0.14.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dc7a2d7b78c504ce0d5227480c6b3c11d54df19c55b4f6a4c78cca04c839f125"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ee3ebd14bfe4c624b84987619300a6d1f9c1c7475fc24c1f373b0bbbdc7b67e2"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
