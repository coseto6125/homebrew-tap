# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.7.1
#   93c29d189731d008a6d1d1b69f1eade3265c58b5a266c8c3b3bfec26fde7e92e
#   cc22675164161ff689fba36a52862de3ad91789b164b294f807e6e97b11db20f
#
# Expected GitHub Release assets:
#   ecp-v0.7.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.7.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "93c29d189731d008a6d1d1b69f1eade3265c58b5a266c8c3b3bfec26fde7e92e"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cc22675164161ff689fba36a52862de3ad91789b164b294f807e6e97b11db20f"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
