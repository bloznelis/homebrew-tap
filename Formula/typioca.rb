class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.3.tar.gz"
    sha256 "f85370ab88e651d4f3d5c61c9fc917f4cddf61715374fb0685a9bf71089871ad"
    version "2.0.3"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
