class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.3.tar.gz"
  version "2.0.3"
  sha256 "cfb0babd114e9456662c85a774b8330d70666aa0ea0bdbc4616cdebc08ffc5d0"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end
