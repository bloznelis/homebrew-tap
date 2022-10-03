class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.5.tar.gz"
    sha256 "30e274aa9d46c18bd839a0d76c7b2d0c627e1bd183099e05bdf27688299f5b78"
    version "2.0.5"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
