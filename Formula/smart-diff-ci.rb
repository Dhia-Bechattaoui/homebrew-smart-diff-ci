class SmartDiffCi < Formula
  desc "Blazing fast, language-agnostic Test Impact Analyzer"
  homepage "https://github.com/dhia-bechattaoui/smart-diff-ci"
  version "0.1.3"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.1.3/smart-diff-ci-aarch64-apple-darwin.tar.gz"
      sha256 "3868f45caba7f5994059f2d7be21dcc0b2800407f0da67e2a8bfd70bb779cf0e"
    else
      url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.1.3/smart-diff-ci-x86_64-apple-darwin.tar.gz"
      sha256 "7f4d9bfaee227922b275fb609b6da7ad592782ba0b11202bd4adb4117296b793"
    end
  elsif OS.linux?
    url "https://github.com/dhia-bechattaoui/smart-diff-ci/releases/download/v0.1.3/smart-diff-ci-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "19f0b998996c2a8df8c936ccdc3f614753a824ac120d440450ebc919bb3e2c79"
  end

  def install
    bin.install "smart-diff-ci"
  end

  test do
    system "#{bin}/smart-diff-ci", "--version"
  end
end
