class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.1.3.tar.gz"
    sha256 "b8ac80e967813aab3364ad493563397f4cc253f349404b2c9430137dc58a45da"
    version "1.1.3"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
