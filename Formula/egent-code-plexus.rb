# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.15.0
#   c23b5cbd7d64b848dd0667372276fe020c10236c82529790ec92ca9c76362630
#   14096317131dbedbb4b0c1516dc7af95cb51e5c53775a882e51287cc8b67174d
#
# Expected GitHub Release assets:
#   ecp-v0.15.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.15.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c23b5cbd7d64b848dd0667372276fe020c10236c82529790ec92ca9c76362630"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "14096317131dbedbb4b0c1516dc7af95cb51e5c53775a882e51287cc8b67174d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
