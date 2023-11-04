class Kbt < Formula
  desc "Keyboard tester in terminal"
  homepage "https://github.com/bloznelis/kbt"
  url "https://github.com/bloznelis/kbt/archive/refs/tags/2.0.5.tar.gz"
  version "2.0.5"
  sha256 "e1863f6d414212df59fcaba8ea0bffc9b68b35cb1cca175b57c2d4067880c54d"
  license "MIT"
  depends_on "rust"

  def install
    system "make", "build", "VERSION=#{version}"
    bin.install "target/release/kbt"
  end
end
