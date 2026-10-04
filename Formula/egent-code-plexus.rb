# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.14.4
#   0722fecfe1f55b8d9093bf54724583a64485aee9c26e4429bf18656abd196d1f
#   eae437aab05a87e9ba5db17610094d9ac37e749db12ba396e70462709256a208
#
# Expected GitHub Release assets:
#   ecp-v0.14.4-aarch64-apple-darwin.tar.gz
#   ecp-v0.14.4-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.14.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0722fecfe1f55b8d9093bf54724583a64485aee9c26e4429bf18656abd196d1f"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "eae437aab05a87e9ba5db17610094d9ac37e749db12ba396e70462709256a208"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
