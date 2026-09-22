# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.2
#   a26d18b2683b7823e6fb441197637e0016806e8e84e26aa9bece2be9e2bb96f6
#   38e9240c5742e4c075346ada6727c2e5d2d0d0d52267a37ef8572213fd248a26
#
# Expected GitHub Release assets:
#   ecp-v0.14.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a26d18b2683b7823e6fb441197637e0016806e8e84e26aa9bece2be9e2bb96f6"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "38e9240c5742e4c075346ada6727c2e5d2d0d0d52267a37ef8572213fd248a26"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
