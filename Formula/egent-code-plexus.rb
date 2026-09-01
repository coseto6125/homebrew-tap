# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.11.0
#   d7ca287fc116560639c909622dd4446fb037a132d6d8987592c23d74082a0777
#   15d11a9e15b790806d521d15755dc15747eda0f190e412d2a0250d95d1054956
#
# Expected GitHub Release assets:
#   ecp-v0.11.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.11.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d7ca287fc116560639c909622dd4446fb037a132d6d8987592c23d74082a0777"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "15d11a9e15b790806d521d15755dc15747eda0f190e412d2a0250d95d1054956"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
