# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.17.1
#   1897fc613700bdf6503a0ce9cc5611528f4b9509dc351dc364fec0804eca12e0
#   5eafa7eab61982682423f22d649860be140d359b382efd3d6f2f2a6001607d6e
#
# Expected GitHub Release assets:
#   ecp-v0.17.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.17.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1897fc613700bdf6503a0ce9cc5611528f4b9509dc351dc364fec0804eca12e0"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5eafa7eab61982682423f22d649860be140d359b382efd3d6f2f2a6001607d6e"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
