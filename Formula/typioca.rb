class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/1.1.0.tar.gz"
    sha256 "1880357bbe3872a9f4831e25a18ecaa282610b810a43630b6d0beba2e72af867"
    version "1.1.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
