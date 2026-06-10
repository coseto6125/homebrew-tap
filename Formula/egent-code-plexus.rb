# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.7
#   6081daea08db252ac5ec0fa87bfbb4aa137486023c8193b50a0c3c565aff8753
#   bcc9be1c06b0f4c09287975fe3bd6d7926f3f4c007db5c374ce9bd4e2cf69336
#
# Expected GitHub Release assets:
#   ecp-v0.6.7-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.7-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6081daea08db252ac5ec0fa87bfbb4aa137486023c8193b50a0c3c565aff8753"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bcc9be1c06b0f4c09287975fe3bd6d7926f3f4c007db5c374ce9bd4e2cf69336"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
