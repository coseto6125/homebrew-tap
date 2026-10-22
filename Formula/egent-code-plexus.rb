# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.16.2
#   36250bd5d36b061eaf58f6e644fd5acb81471984b0085286c9a2943b26823667
#   d3c110a6d240794f44097c98f72e8f34ea50047e45ccdd3646531e79b4c595e8
#
# Expected GitHub Release assets:
#   ecp-v0.16.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.16.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.16.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "36250bd5d36b061eaf58f6e644fd5acb81471984b0085286c9a2943b26823667"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d3c110a6d240794f44097c98f72e8f34ea50047e45ccdd3646531e79b4c595e8"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
