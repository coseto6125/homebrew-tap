# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.13.1
#   7cc927f24957c745b236cba7d178c005c15b8e4e0af24ddea57b4c945a707edd
#   768b4b2b27248dc4aa34cde33649be69efd253b46f3d0ec9d5094c12d5755d67
#
# Expected GitHub Release assets:
#   ecp-v0.13.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.13.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7cc927f24957c745b236cba7d178c005c15b8e4e0af24ddea57b4c945a707edd"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "768b4b2b27248dc4aa34cde33649be69efd253b46f3d0ec9d5094c12d5755d67"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
