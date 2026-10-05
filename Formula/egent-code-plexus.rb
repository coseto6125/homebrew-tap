# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.5
#   f821c504b0600ba5cc9a2329683ca041296cb48908c3c64b1c30b1c3b16f155f
#   5b0b5fe2e686de4643c59c28cfe91912bccaaadfc97d23a2943680d58006f555
#
# Expected GitHub Release assets:
#   ecp-v0.14.5-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.5-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f821c504b0600ba5cc9a2329683ca041296cb48908c3c64b1c30b1c3b16f155f"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "5b0b5fe2e686de4643c59c28cfe91912bccaaadfc97d23a2943680d58006f555"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
