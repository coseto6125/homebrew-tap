# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.1
#   58750bfdd0789eec72754da8d2160c543f9083a5c11b22c061768d2a1945bdf7
#   02b9a6c6a33d76280d34ee2239b1c0e80c525dc2e3682465e74cacd68a3ae699
#
# Expected GitHub Release assets:
#   ecp-v0.6.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "58750bfdd0789eec72754da8d2160c543f9083a5c11b22c061768d2a1945bdf7"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "02b9a6c6a33d76280d34ee2239b1c0e80c525dc2e3682465e74cacd68a3ae699"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
