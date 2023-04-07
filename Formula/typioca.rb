class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.2.0.tar.gz"
    sha256 "f491e785dd6650a354601f727a9670955a3db9ab5f2be62159c3bf388af421a1"
    version "2.2.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
