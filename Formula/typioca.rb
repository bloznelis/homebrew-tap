class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.2.0.tar.gz"
    sha256 "8897bc24d4c0ea5c190951de83e494f295ece4e7f4ea4c68c1199bd47107366d"
    version "1.2.0"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
