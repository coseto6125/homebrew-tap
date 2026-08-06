# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.9
#   b338fb444449179bdc7b96ccb5a39f756db53a99025fbd8b315d9ed649258cc4
#   656e87b11c586f5ebe1b4a61cc62cd3151572ffcaf5caf8e5c4af5a71e636826
#
# Expected GitHub Release assets:
#   ecp-v0.8.9-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.9-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b338fb444449179bdc7b96ccb5a39f756db53a99025fbd8b315d9ed649258cc4"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "656e87b11c586f5ebe1b4a61cc62cd3151572ffcaf5caf8e5c4af5a71e636826"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
