class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/1.0.2.tar.gz"
    sha256 "5bfa782a54d50ddb90570eca95c71683b1f8104fb3dfa48365f02f2d5d0c6179"
    version "1.0.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
