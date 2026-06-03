# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.6.4
#   5704e85a6844b2aeb4e99c37838a5c12bdf5450e8c6f61fbb43d71aec2490414
#   ff1482443e60f36563452a11fb18f445e5cdedbf34e33c169d3d4d3472200592
#
# Expected GitHub Release assets:
#   ecp-v0.6.4-aarch64-apple-darwin.tar.gz
#   ecp-v0.6.4-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.6.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5704e85a6844b2aeb4e99c37838a5c12bdf5450e8c6f61fbb43d71aec2490414"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ff1482443e60f36563452a11fb18f445e5cdedbf34e33c169d3d4d3472200592"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
