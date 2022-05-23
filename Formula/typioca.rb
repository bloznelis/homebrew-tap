class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.2.2.tar.gz"
    sha256 "c56232a2dc7645672d60b37de86ddafacf32828985500ed974dac58ebf7d128a"
    version "1.2.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
