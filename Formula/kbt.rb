class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.4.tar.gz"
  version "2.0.4"
  sha256 "8a49dd7b7e123ab2edb244b2f1fc0b473bdb9479a28a154ef3bf48ac1afc0f98"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end
