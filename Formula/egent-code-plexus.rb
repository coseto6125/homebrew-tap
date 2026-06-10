# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.6
#   784626bd24cd8b72f8c6ee2ddc6a34f13323ae54e7c4da9116a863a283034a42
#   07ed0c0c60156b277b33210f8150304f83aea83c6b03339a5b59ffbee6358281
#
# Expected GitHub Release assets:
#   ecp-v0.6.6-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.6-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "784626bd24cd8b72f8c6ee2ddc6a34f13323ae54e7c4da9116a863a283034a42"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "07ed0c0c60156b277b33210f8150304f83aea83c6b03339a5b59ffbee6358281"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
