class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/1.1.1.tar.gz"
    sha256 "dc5f8b02cb77f87628fd420570a80c8891e3a7ea8b2356582d68895e16911af3"
    version "1.1.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
