# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.2
#   2c04a88ef0440072e447c5921126796be34410fd36d510cbeb9f20a82ad71e7e
#   f99547446a20d586057fd47d7226d16fa3407bf71a6757b7e2ae1d557d853ece
#
# Expected GitHub Release assets:
#   ecp-v0.8.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2c04a88ef0440072e447c5921126796be34410fd36d510cbeb9f20a82ad71e7e"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f99547446a20d586057fd47d7226d16fa3407bf71a6757b7e2ae1d557d853ece"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
