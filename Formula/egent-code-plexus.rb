# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.6
#   2a9cf7d97d8f70f6b51bd73b7f6903b328d9f3c6d353ca15682bcf5361068c08
#   905fb9fc487439d01b3e185080feb5a0286dd460822d814b81af7039ebab1005
#
# Expected GitHub Release assets:
#   ecp-v0.14.6-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.6-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "2a9cf7d97d8f70f6b51bd73b7f6903b328d9f3c6d353ca15682bcf5361068c08"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "905fb9fc487439d01b3e185080feb5a0286dd460822d814b81af7039ebab1005"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
