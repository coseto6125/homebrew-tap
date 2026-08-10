# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.9.1
#   b215ed6ded606cc5d189066f5a2fb60c15f61c11e01afb6210578bde1f544d5b
#   2ad01a3217b801e2597fb0556ac553186f859866827c720bb7da17700a9a79b3
#
# Expected GitHub Release assets:
#   ecp-v0.9.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.9.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b215ed6ded606cc5d189066f5a2fb60c15f61c11e01afb6210578bde1f544d5b"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2ad01a3217b801e2597fb0556ac553186f859866827c720bb7da17700a9a79b3"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
