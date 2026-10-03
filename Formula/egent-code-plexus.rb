# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.3
#   2c5f27e6cfb72a4145837afe7ded42d84694c5b54b5d5c2136cb69612e9db517
#   80b25111cef26f3277bf0305c9c477de31d4ee2acd67bc01ffffcbb6137bff10
#
# Expected GitHub Release assets:
#   ecp-v0.14.3-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.3-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2c5f27e6cfb72a4145837afe7ded42d84694c5b54b5d5c2136cb69612e9db517"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "80b25111cef26f3277bf0305c9c477de31d4ee2acd67bc01ffffcbb6137bff10"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
