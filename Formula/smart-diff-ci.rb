class SmartDiffCi < Formula
  desc "Blazing fast, language-agnostic Test Impact Analyzer"
  homepage "https://github.com/dhia-bechattaoui/smart-diff-ci"
  version "0.2.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.2.0/smart-diff-ci-aarch64-apple-darwin.tar.gz"
      sha256 "6ddc6f35208be794535ac321cdd3c38571784061ea6eb5cbf05b34518461653f"
    else
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.2.0/smart-diff-ci-x86_64-apple-darwin.tar.gz"
      sha256 "89e9c34feb529a8d8e5cf6a68da519f5162e27a86cc5a8f3f26fdb449c082d3d"
    end
  elsif OS.linux?
    url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.2.0/smart-diff-ci-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2d758cf2ebd0f795969256a9a2277b1fa7d2dc1003cfd96bd4cc1d7b65d79a53"
  end

  def install
    bin.install "smart-diff-ci"
  end

  test do
    system "#{bin}/smart-diff-ci", "--version"
  end
end
