class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/1.7.1.tar.gz"
    sha256 "394c55bb551e8cfbdafdc6590bada896a8b3df33288b4d13982e5d6562fd8e69"
    version "1.7.1"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
