class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.7.tar.gz"
    sha256 "416f7bab4e2a2087de06a8fedbc6a3290da3cce3fd9ebacd728d989f53c4393f"
    version "2.0.7"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
