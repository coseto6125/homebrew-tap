# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.5
#   24acb8edba38fbbc813bc965dac4c15906fd06118c8352526ab9c31c063ffa67
#   186f70901280cdb71fd1675975163f3f40a1170cfa31864e5d58b0a0ea9f0e5b
#
# Expected GitHub Release assets:
#   ecp-v0.8.5-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.5-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "24acb8edba38fbbc813bc965dac4c15906fd06118c8352526ab9c31c063ffa67"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "186f70901280cdb71fd1675975163f3f40a1170cfa31864e5d58b0a0ea9f0e5b"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
