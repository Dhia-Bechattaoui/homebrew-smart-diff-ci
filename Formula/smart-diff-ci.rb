class SmartDiffCi < Formula
  desc "Blazing fast, language-agnostic Test Impact Analyzer"
  homepage "https://github.com/dhia-bechattaoui/smart-diff-ci"
  version "0.1.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.1.1/smart-diff-ci-aarch64-apple-darwin.tar.gz"
      sha256 "7d2b79677f6d6f1eaac76805010c38b55d7db5e017e6573d74a8c318462a767e"
    else
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.1.1/smart-diff-ci-x86_64-apple-darwin.tar.gz"
      sha256 "c29c5ef46c921fd68a32a7169d494cc7bd6f76302d10217be0115f27db00f88c"
    end
  elsif OS.linux?
    url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.1.1/smart-diff-ci-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2fe7920b9c428b3f34b9c902d9d461f96d0b1e5b9f262858c1425fc365b89286"
  end

  def install
    bin.install "smart-diff-ci"
  end

  test do
    system "#{bin}/smart-diff-ci", "--version"
  end
end
