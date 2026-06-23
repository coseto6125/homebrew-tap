# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.1
#   0e834825ca9074ff5cbe891180575f398e3d33145b4283ec362ff9d72e75736c
#   9184794ad230be5cdbd3d87cfe67aeac26fb9c0116bf0f9e66c54346b50b20bd
#
# Expected GitHub Release assets:
#   ecp-v0.8.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0e834825ca9074ff5cbe891180575f398e3d33145b4283ec362ff9d72e75736c"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9184794ad230be5cdbd3d87cfe67aeac26fb9c0116bf0f9e66c54346b50b20bd"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
