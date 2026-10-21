# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.16.0
#   c228f5f15f37b2046458c4e3ae4c9da03eac765a7d643b24703b59ea676521d4
#   30fbd235106240fe9885d45d9fe75fb85943f2b8d83ce262e75eccb1803195ae
#
# Expected GitHub Release assets:
#   ecp-v0.16.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.16.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c228f5f15f37b2046458c4e3ae4c9da03eac765a7d643b24703b59ea676521d4"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "30fbd235106240fe9885d45d9fe75fb85943f2b8d83ce262e75eccb1803195ae"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
