# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.5.3
#   8a299e064760747dd9b9c70bf7cd9fa264620ac09811cb49b8d1d45e1e845d9b
#   963ab5f98f24f753ec17408329bf0b26f5853fcc91c82277c6fd2190b6be3e0e
#
# Expected GitHub Release assets:
#   ecp-v0.5.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.5.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.5.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8a299e064760747dd9b9c70bf7cd9fa264620ac09811cb49b8d1d45e1e845d9b"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "963ab5f98f24f753ec17408329bf0b26f5853fcc91c82277c6fd2190b6be3e0e"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
