# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.9.0
#   1a2bc52e7482653dc5b0f89daa10622a797f8470028950acd14c0a07ae2f38fb
#   0053aacc5a3096a557258f9ae160f43c1b46dd8f3cb7ce0acdfd515394f215da
#
# Expected GitHub Release assets:
#   ecp-v0.9.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.9.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1a2bc52e7482653dc5b0f89daa10622a797f8470028950acd14c0a07ae2f38fb"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0053aacc5a3096a557258f9ae160f43c1b46dd8f3cb7ce0acdfd515394f215da"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
