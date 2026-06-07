class SmartDiffCi < Formula
  desc "Blazing fast, language-agnostic Test Impact Analyzer"
  homepage "https://github.com/dhia-bechattaoui/smart-diff-ci"
  version "0.3.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.3.0/smart-diff-ci-aarch64-apple-darwin.tar.gz"
      sha256 "316d1f3a764819e934d4a26a014ea8e5137dab4054aa3caff4b354a25e6a4872"
    else
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.3.0/smart-diff-ci-x86_64-apple-darwin.tar.gz"
      sha256 "991061ec42f35ea290aec2b598e490e6f437952e110ca86830c30de40a1839c6"
    end
  elsif OS.linux?
    url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.3.0/smart-diff-ci-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6d3195af55dbbaa23dee38a66f53b2193c76eb9ed95d1d3c5450db615c582e3b"
  end

  def install
    bin.install "smart-diff-ci"
  end

  test do
    system "#{bin}/smart-diff-ci", "--version"
  end
end
