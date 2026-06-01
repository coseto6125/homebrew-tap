# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.3
#   6fb031f3526a85a872ac8ec4bad39a6f474f415ce119f53f237341a96b1694a0
#   42c606e4594b117d73dae5059226b030c11b9b61cc5832e76a637ab37f0c969f
#
# Expected GitHub Release assets:
#   ecp-v0.6.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6fb031f3526a85a872ac8ec4bad39a6f474f415ce119f53f237341a96b1694a0"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "42c606e4594b117d73dae5059226b030c11b9b61cc5832e76a637ab37f0c969f"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
