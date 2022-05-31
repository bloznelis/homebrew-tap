class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.2.3.tar.gz"
    sha256 "3f4b5180a4e4ad05aa063f88a2a047562d3c04452f1db9cb4f6557198ac8a43a"
    version "1.2.3"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
