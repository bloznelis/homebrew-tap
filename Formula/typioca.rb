class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.7.3.tar.gz"
    sha256 "15511c0efbb1f54232536af3caf277a0916f0f2e17c3377b9e41f7d7c39c4d7d"
    version "1.7.3"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
