# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.16.3
#   0b1a6b21e71a430396892bd88db9b983ad587c452ac8ae2ebda7fa9fadd0fd6a
#   74f555734e8d78c21578b22a3f08cc014ea477f5da0b293e3ecd2d27c2811f77
#
# Expected GitHub Release assets:
#   ecp-v0.16.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.16.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.16.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0b1a6b21e71a430396892bd88db9b983ad587c452ac8ae2ebda7fa9fadd0fd6a"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "74f555734e8d78c21578b22a3f08cc014ea477f5da0b293e3ecd2d27c2811f77"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
