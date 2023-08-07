class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.5.0.tar.gz"
    sha256 "dc56dcd6a9b606741bfbce6cb307e81fc8f629cb5b1860b573c3141d09e61427"
    version "2.5.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
