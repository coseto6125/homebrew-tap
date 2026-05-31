# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.2
#   dbfe0eb867172a44586e2c5f55131f39f177784d36cc6e1f2dc145a69a6ed412
#   09c96cf429ce087ebce904394eeb7f009263fbd540c11d826801ad3fd29d88c1
#
# Expected GitHub Release assets:
#   ecp-v0.6.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dbfe0eb867172a44586e2c5f55131f39f177784d36cc6e1f2dc145a69a6ed412"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "09c96cf429ce087ebce904394eeb7f009263fbd540c11d826801ad3fd29d88c1"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
