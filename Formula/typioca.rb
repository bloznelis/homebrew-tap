class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.1.2.tar.gz"
    sha256 "293633c2207f6ef34329bd0119ebaf8be63c28ce1e76d2b6242b60db60e45b6d"
    version "1.1.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
