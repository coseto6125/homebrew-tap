# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.17.2
#   0a42f1c1d7ee899a57373264c3d01f1c4a826dcf7bb5ebefd0b968bd63a1cc1d
#   4f8abe980bc99c975ddce2cf710d5e3fd6b65e1cc3e7e1df457588db5a6c07ce
#
# Expected GitHub Release assets:
#   ecp-v0.17.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.17.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.17.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0a42f1c1d7ee899a57373264c3d01f1c4a826dcf7bb5ebefd0b968bd63a1cc1d"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4f8abe980bc99c975ddce2cf710d5e3fd6b65e1cc3e7e1df457588db5a6c07ce"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
