# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.10.2
#   16b94deeeba177df898f140ef87d070399953c14b01c58e8d0fc63e089d0e678
#   eee3b633609d4d90832706e199ba726bdb435e7295183429b0c4b96d430355ca
#
# Expected GitHub Release assets:
#   ecp-v0.10.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.10.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "16b94deeeba177df898f140ef87d070399953c14b01c58e8d0fc63e089d0e678"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "eee3b633609d4d90832706e199ba726bdb435e7295183429b0c4b96d430355ca"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
