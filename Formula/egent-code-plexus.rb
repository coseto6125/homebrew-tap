# Homebrew tap formula template for coseto6125/homebrew-tap.
#
# Release automation should replace:
#   0.4.0
#   e9ae7368253be548a89da28287cbcdfaac4d796d6b6b51fab7553d88da1fbc0d
#   67f5fea10aea8a614837bf068f768f8ee063beeda9d051d28f1d0231784c0f7b
#
# Expected GitHub Release assets:
#   ecp-v0.4.0-aarch64-apple-darwin.tar.gz
#   ecp-v0.4.0-x86_64-apple-darwin.tar.gz

class EgentCodePlexus < Formula
  desc "Code intelligence graph CLI for LLM agents"
  homepage "https://github.com/coseto6125/egent-code-plexus"
  license "MIT OR Apache-2.0"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e9ae7368253be548a89da28287cbcdfaac4d796d6b6b51fab7553d88da1fbc0d"
    else
      url "https://github.com/coseto6125/egent-code-plexus/releases/download/v#{version}/ecp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "67f5fea10aea8a614837bf068f768f8ee063beeda9d051d28f1d0231784c0f7b"
    end
  end

  def install
    bin.install "ecp"
  end

  test do
    system "#{bin}/ecp", "--version"
  end
end
