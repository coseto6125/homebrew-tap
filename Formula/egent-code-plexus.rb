# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.8.6
#   e9982a65636492dfafc1c13b901c4d74d84e2fb2368762f1c3a9b319a34b8ab9
#   e55cf7473188c5037373ba7c880c21db478393428fc6cf0835cbb1def1700646
#
# Expected GitHub Release assets:
#   ecp-v0.8.6-aarch64-apple-darwin.tar.gz
#   ecp-v0.8.6-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.8.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e9982a65636492dfafc1c13b901c4d74d84e2fb2368762f1c3a9b319a34b8ab9"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e55cf7473188c5037373ba7c880c21db478393428fc6cf0835cbb1def1700646"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
