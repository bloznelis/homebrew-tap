class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.1.tar.gz"
  version "2.0.1"
  sha256 "ab38afac38ff8151b07e17405b3af91639b323fb76a3d0729bf4b87963a40267"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end
