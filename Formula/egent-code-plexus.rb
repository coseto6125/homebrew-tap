# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.7.0
#   fafdc3c70552a65dd959971fa8f443554ea800ae375c7c8266b10e713487b71b
#   a3f3927743859d85d9ef2a04ba55893ca2b4f99d5b26f790c99ad565d2885bce
#
# Expected GitHub Release assets:
#   ecp-v0.7.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.7.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fafdc3c70552a65dd959971fa8f443554ea800ae375c7c8266b10e713487b71b"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a3f3927743859d85d9ef2a04ba55893ca2b4f99d5b26f790c99ad565d2885bce"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
