class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.2.tar.gz"
  version "2.0.2"
  sha256 "1395edb2deb72f5d170096b5eb46cced7323244d2e8c1e9e2e3f289eaedf9b24"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end
