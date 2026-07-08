# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.4
#   c322c75fe79cc7a2f417550cbb8be6c69f0704b8b04f63462aa8cf6b4f2d1cd4
#   f4a0cc00452ea17f97d8e08070b2fdd20fae760fa6066a61fabdcc94be41b610
#
# Expected GitHub Release assets:
#   ecp-v0.8.4-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.4-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c322c75fe79cc7a2f417550cbb8be6c69f0704b8b04f63462aa8cf6b4f2d1cd4"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f4a0cc00452ea17f97d8e08070b2fdd20fae760fa6066a61fabdcc94be41b610"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
