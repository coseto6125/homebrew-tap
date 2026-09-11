# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.13.2
#   847bbbbfeef2246a4340f06b1345f20e2906d5169b8c2680c340a0410c0afbbd
#   349a0a6c3bb50c0a603ab2794dd40db73b95afa5a8434dc3ab48029ef3e0db84
#
# Expected GitHub Release assets:
#   ecp-v0.13.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.13.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.13.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "847bbbbfeef2246a4340f06b1345f20e2906d5169b8c2680c340a0410c0afbbd"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "349a0a6c3bb50c0a603ab2794dd40db73b95afa5a8434dc3ab48029ef3e0db84"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
