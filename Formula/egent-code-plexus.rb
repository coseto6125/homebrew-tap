# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.13.0
#   a1e6e8d913f6ab7460ae5afdd77fd3b0fc461ede747bf49bd858b551edab31b0
#   e4d810edb101836f573055b34138a707c289a189fa61e68ec9bafecf1df8ad1d
#
# Expected GitHub Release assets:
#   ecp-v0.13.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.13.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a1e6e8d913f6ab7460ae5afdd77fd3b0fc461ede747bf49bd858b551edab31b0"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e4d810edb101836f573055b34138a707c289a189fa61e68ec9bafecf1df8ad1d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
