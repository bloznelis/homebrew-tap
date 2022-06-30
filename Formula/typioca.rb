class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.7.2.tar.gz"
    sha256 "213603a983b031ed748c843238e32be32c152754a01fb9a6fe364dcda73efcb1"
    version "1.7.2"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
