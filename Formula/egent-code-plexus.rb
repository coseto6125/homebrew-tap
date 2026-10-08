# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.7
#   f53549ba190b37fd36a42f3fa64fc817f777577c35a01fa3689fd4afa60e47a8
#   63ffe3d89bdc025c00a086cc29700bbecda5902cf27fa5b0f8a547083a654f57
#
# Expected GitHub Release assets:
#   ecp-v0.14.7-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.7-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f53549ba190b37fd36a42f3fa64fc817f777577c35a01fa3689fd4afa60e47a8"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "63ffe3d89bdc025c00a086cc29700bbecda5902cf27fa5b0f8a547083a654f57"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
