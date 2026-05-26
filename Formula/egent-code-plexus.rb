# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.5.2
#   479c2a6d79eda5a880527ccb2bfdcb961eabda1883fd89d4cc29d900ef90621e
#   bf47ba64ce8cf8bc236a341df146080fb62a4f9db5e5134c8ed4b9ce51273874
#
# Expected GitHub Release assets:
#   ecp-v0.5.2-aarch64-apple-darwin.tar.gz
#   ecp-v0.5.2-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.5.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "479c2a6d79eda5a880527ccb2bfdcb961eabda1883fd89d4cc29d900ef90621e"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bf47ba64ce8cf8bc236a341df146080fb62a4f9db5e5134c8ed4b9ce51273874"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
