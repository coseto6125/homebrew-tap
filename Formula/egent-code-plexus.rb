# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.1
#   d78839cd98d98ff2abc6fa18c15ba648e2cbf2f9f4fe1e406dcbe06e5256f08c
#   bf4f4e621be80a6e9392ed5dcb050c8b3f926da412024c43c3d1f0bf7a06f0fc
#
# Expected GitHub Release assets:
#   ecp-v0.14.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d78839cd98d98ff2abc6fa18c15ba648e2cbf2f9f4fe1e406dcbe06e5256f08c"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bf4f4e621be80a6e9392ed5dcb050c8b3f926da412024c43c3d1f0bf7a06f0fc"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
