# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.17.3
#   efa55aa63683493facfbd9a44bcb562e2a789071fc5bfb3d606420afa467f182
#   c9b327faa7fdd663b89486e81ced72afb17f76f4f887274eeaded4e2177fa375
#
# Expected GitHub Release assets:
#   ecp-v0.17.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.17.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.17.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "efa55aa63683493facfbd9a44bcb562e2a789071fc5bfb3d606420afa467f182"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c9b327faa7fdd663b89486e81ced72afb17f76f4f887274eeaded4e2177fa375"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
