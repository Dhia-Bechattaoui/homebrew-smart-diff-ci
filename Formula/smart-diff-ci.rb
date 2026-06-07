class SmartDiffCi < Formula
  desc "Blazing fast, language-agnostic Test Impact Analyzer"
  homepage "https://github.com/dhia-bechattaoui/smart-diff-ci"
  version "0.3.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.3.1/smart-diff-ci-aarch64-apple-darwin.tar.gz"
      sha256 "fd0105867a5a91c62b1518ed8c9293504f2198577cf35110e59e66a9bd87b800"
    else
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.3.1/smart-diff-ci-x86_64-apple-darwin.tar.gz"
      sha256 "d860423b3b49d95df3d05008eabbf784f8ad059c34d0f0e1db4a3880e83caefc"
    end
  elsif OS.linux?
    url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.3.1/smart-diff-ci-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bb057bde5be14b5641dcbb47084b0c600c368f57ed5cacfca3808b17bc360b29"
  end

  def install
    bin.install "smart-diff-ci"
  end

  test do
    system "#{bin}/smart-diff-ci", "--version"
  end
end
