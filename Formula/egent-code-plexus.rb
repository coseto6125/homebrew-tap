# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.16.4
#   000eb64437cacaa2f66b40210f070e6f4d9a86ee86148b33e2b8b6ce4e6e7fbc
#   435ce9dadba702ceaa562e7a526188ba14529629d8fbc55507f3c92be6aa765d
#
# Expected GitHub Release assets:
#   ecp-v0.16.4-aarch64-apple-darwin.tar.gz
#   ecp-v0.16.4-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.16.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "000eb64437cacaa2f66b40210f070e6f4d9a86ee86148b33e2b8b6ce4e6e7fbc"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "435ce9dadba702ceaa562e7a526188ba14529629d8fbc55507f3c92be6aa765d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
