class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "3a3c30f0579531db181dedfe2c42e28e567b556085f7f24fe570c74a2cd6a703"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end
