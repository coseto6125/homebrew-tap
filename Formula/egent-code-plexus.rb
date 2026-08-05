# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.8
#   24558d61f53c54bf1df2f17ee5492592031b642ff76ed77a0fbbca7908fd330c
#   7e0cbd50c0347dc297b32fd54226322955d5bb7223a7a7bf5d8e48e3530fd224
#
# Expected GitHub Release assets:
#   ecp-v0.8.8-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.8-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "24558d61f53c54bf1df2f17ee5492592031b642ff76ed77a0fbbca7908fd330c"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7e0cbd50c0347dc297b32fd54226322955d5bb7223a7a7bf5d8e48e3530fd224"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
