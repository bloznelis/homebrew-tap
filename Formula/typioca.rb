class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.6.tar.gz"
    sha256 "63b1a2411fbf3ee530dfe2d48cbd7bc01cb1d9d64e66f2739d9273408db99f5f"
    version "2.0.6"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
