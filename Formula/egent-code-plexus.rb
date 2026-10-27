# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.17.0
#   b7bbe886266a409ba52e4d9cc1be9d96efb5434181b982bb1b62bfc65477c778
#   dd127f4bb00688597751d0964dfa8e48ee330d9a4cf881684fc612885c8e57fb
#
# Expected GitHub Release assets:
#   ecp-v0.17.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.17.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b7bbe886266a409ba52e4d9cc1be9d96efb5434181b982bb1b62bfc65477c778"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dd127f4bb00688597751d0964dfa8e48ee330d9a4cf881684fc612885c8e57fb"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
