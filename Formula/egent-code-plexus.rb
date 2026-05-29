# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.0
#   4539140cf6c6067aa24c90ff57aee7376721c252466f3ed721585c7dfb96152b
#   f97d753de889b4873324f94c3b6c9ed1356529c36a24988d1a72cd9ee20174a6
#
# Expected GitHub Release assets:
#   ecp-v0.6.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4539140cf6c6067aa24c90ff57aee7376721c252466f3ed721585c7dfb96152b"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f97d753de889b4873324f94c3b6c9ed1356529c36a24988d1a72cd9ee20174a6"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
