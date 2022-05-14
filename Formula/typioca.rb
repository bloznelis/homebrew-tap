class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/refs/tags/1.0.1.tar.gz"
    sha256 "fa28239cd5fdb11ea0c2aba32cff767a7ce46f18d769f821797c6942ae2b9052"
    version "1.0.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
