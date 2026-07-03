# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.3
#   02cb31a9a5de926d4507669881076f6d596eeb54e0f03622889aa6c9770634fd
#   c013c8a50db2e6d1f91453657543e185e75d29639cb92bfb0d6519946d432361
#
# Expected GitHub Release assets:
#   ecp-v0.8.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "02cb31a9a5de926d4507669881076f6d596eeb54e0f03622889aa6c9770634fd"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c013c8a50db2e6d1f91453657543e185e75d29639cb92bfb0d6519946d432361"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
