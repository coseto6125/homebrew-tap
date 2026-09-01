# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.12.0
#   53b832cfbd43bfb274c4ee1f1faf506f0765c31e87e473d0d635d6545a08a559
#   156aeb230f4823bd95bd5184bcfe198fc33961f2e4ad75dd6f7d4014b822f26d
#
# Expected GitHub Release assets:
#   ecp-v0.12.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.12.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "53b832cfbd43bfb274c4ee1f1faf506f0765c31e87e473d0d635d6545a08a559"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "156aeb230f4823bd95bd5184bcfe198fc33961f2e4ad75dd6f7d4014b822f26d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
