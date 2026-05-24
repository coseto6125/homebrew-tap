# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.4.1
#   bfaa81689c55e50d3e936cd0f1f92092bc6c100a6fbe39027418ebd9b966f665
#   9f611aa14de327869c0ccbc740631e661bc284444579ca50c48c5b5a48320aee
#
# Expected GitHub Release assets:
#   ecp-v0.4.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.4.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bfaa81689c55e50d3e936cd0f1f92092bc6c100a6fbe39027418ebd9b966f665"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9f611aa14de327869c0ccbc740631e661bc284444579ca50c48c5b5a48320aee"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
