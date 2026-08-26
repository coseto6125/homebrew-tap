# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.10.1
#   091a5223466680cff57c68a47f417067fbc9cfcef7386da7e48b49efa50cfc56
#   36136656ab0430398f4f748311ecba933f82d3c6e87d85dedcfe1d496dd082b9
#
# Expected GitHub Release assets:
#   ecp-v0.10.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.10.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "091a5223466680cff57c68a47f417067fbc9cfcef7386da7e48b49efa50cfc56"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "36136656ab0430398f4f748311ecba933f82d3c6e87d85dedcfe1d496dd082b9"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
