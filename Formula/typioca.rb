class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.3.0.tar.gz"
    sha256 "9b53ffd4424dd9d1706417d498f9370cecdb7c98e9bb5b53032c4f691230cde1"
    version "1.3.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
