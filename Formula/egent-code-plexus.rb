# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.5
#   111b787c3b648c51a107ff0090394e17d818fcd9ea6635c3253445ab549b2232
#   22cc25f43538db62ddcc238fd2d3e095dfc84a95b3cefbd836c2ea670d3bf3f5
#
# Expected GitHub Release assets:
#   ecp-v0.6.5-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.5-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "111b787c3b648c51a107ff0090394e17d818fcd9ea6635c3253445ab549b2232"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "22cc25f43538db62ddcc238fd2d3e095dfc84a95b3cefbd836c2ea670d3bf3f5"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
