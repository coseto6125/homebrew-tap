# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.16.1
#   b703889b0fbb1971dd922810a7d6c13f75841c6a9165151a75e7e59609201fc0
#   e8dae519bc51e8badec687314280cbffc2cb37a7a56f8b2e52e15d2dde4322ec
#
# Expected GitHub Release assets:
#   ecp-v0.16.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.16.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b703889b0fbb1971dd922810a7d6c13f75841c6a9165151a75e7e59609201fc0"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e8dae519bc51e8badec687314280cbffc2cb37a7a56f8b2e52e15d2dde4322ec"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
