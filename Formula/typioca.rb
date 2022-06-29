class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.7.0.tar.gz"
    sha256 "7e9e05889f90057aa1180d8df80095823d675ad7a12d71af1ae2ff64542fe01e"
    version "1.7.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
