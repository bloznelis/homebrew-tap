class Typioca < Formula
    desc "Minimal, terminal based typing speed tester"
    homepage "https://github.com/bloznelis/typioca"
    url "https://github.com/bloznelis/typioca/archive/2.0.4.tar.gz"
    sha256 "5a056e457ca205964d17fdd169a9fc82dbb75fd9f7fc71078eec3b61cd94b34f"
    version "2.0.4"
    depends_on "go"
    license "MIT"

    def install
        system "make", "build", "VERSION=#{version}"
        bin.install "execs/typioca"
    end
end
