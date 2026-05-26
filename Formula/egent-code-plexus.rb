# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.5.1
#   8b22e29ff850af42415620592b7161457cc85419e8a75b02bfc1ba4c4520b785
#   aa186c0b3e0ff97335feb526ba70716541a70ffa5e709fa175f50318604bb41e
#
# Expected GitHub Release assets:
#   ecp-v0.5.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.5.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8b22e29ff850af42415620592b7161457cc85419e8a75b02bfc1ba4c4520b785"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "aa186c0b3e0ff97335feb526ba70716541a70ffa5e709fa175f50318604bb41e"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
