# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.7
#   3a33ac9e1486b206cbb84d59aa49a19661b69e5ace2d700db460043bfee3c562
#   6c48682280002445ddb0aea37accc6437e2785fca10f3845462653b9abae84d2
#
# Expected GitHub Release assets:
#   ecp-v0.8.7-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.7-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3a33ac9e1486b206cbb84d59aa49a19661b69e5ace2d700db460043bfee3c562"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6c48682280002445ddb0aea37accc6437e2785fca10f3845462653b9abae84d2"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
