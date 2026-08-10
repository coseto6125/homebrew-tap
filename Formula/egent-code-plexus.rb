# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.9.3
#   c39a43c43924ff1a353457ce64856f10202f2efbc9735bbf67b0a506204f3802
#   82d98a395d3bf6e196646e07b158c4f22a699a65c0675a10a1ce90ca5b97934c
#
# Expected GitHub Release assets:
#   ecp-v0.9.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.9.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.9.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c39a43c43924ff1a353457ce64856f10202f2efbc9735bbf67b0a506204f3802"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "82d98a395d3bf6e196646e07b158c4f22a699a65c0675a10a1ce90ca5b97934c"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
