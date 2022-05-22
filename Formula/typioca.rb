class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.2.1.tar.gz"
    sha256 "ab5ee22ddc935ed140c74807f9ff594e99ad49f0f7cf7c5568cfde2a4983ef65"
    version "1.2.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build"
        bin.install "execs/typioca"
    end
end
