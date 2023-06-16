class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.4.1.tar.gz"
    sha256 "617ac7bf44278a14607ee8a3ba1b0d4d70ab352ab378f03d9486749b2d29a4f9"
    version "2.4.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
