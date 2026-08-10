# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.9.2
#   1df9830676906c1e4f11f05dd05806b371e37a8504d94b4069cfc70f9218aa50
#   c141bf1177080775710eb7f37cc644dd884ff877619b1cbdcc3605cdf2a14c7d
#
# Expected GitHub Release assets:
#   ecp-v0.9.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.9.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.9.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1df9830676906c1e4f11f05dd05806b371e37a8504d94b4069cfc70f9218aa50"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c141bf1177080775710eb7f37cc644dd884ff877619b1cbdcc3605cdf2a14c7d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
