# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.12.1
#   253c0586f1653e60651c95f7cae37d01b42255007333362174141a1a4d9cabdc
#   0c8768f51b4eda757075ea447db062be1f982eafe348cff34bfbb81bc1bab53d
#
# Expected GitHub Release assets:
#   ecp-v0.12.1-aarch64-apple-darwin.tar.gz
#   ecp-v0.12.1-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "253c0586f1653e60651c95f7cae37d01b42255007333362174141a1a4d9cabdc"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0c8768f51b4eda757075ea447db062be1f982eafe348cff34bfbb81bc1bab53d"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
