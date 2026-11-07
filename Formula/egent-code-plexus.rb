# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.18.0
#   7a11d3febda69a393be3aa1576751c469356a7615e11981a6bcb3c5cc3034f7d
#   b2ce84a0565eeb4af097382bf9795b4b9c325e379ef2207ba1a769885f2e7c44
#
# Expected GitHub Release assets:
#   ecp-v0.18.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.18.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7a11d3febda69a393be3aa1576751c469356a7615e11981a6bcb3c5cc3034f7d"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b2ce84a0565eeb4af097382bf9795b4b9c325e379ef2207ba1a769885f2e7c44"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
