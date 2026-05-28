# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.5.4
#   5a5f3d7164007cbeadfd79fcdc35bc1933bda08ed04d10684dab17443a7dee25
#   c0e151eca4021740efe4eca8fb634ebc0310d8aaf60fceae4aaa6a03bb8ae583
#
# Expected GitHub Release assets:
#   ecp-v0.5.4-aarch64-apple-darwin.tar.gz
#   ecp-v0.5.4-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.5.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5a5f3d7164007cbeadfd79fcdc35bc1933bda08ed04d10684dab17443a7dee25"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c0e151eca4021740efe4eca8fb634ebc0310d8aaf60fceae4aaa6a03bb8ae583"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
