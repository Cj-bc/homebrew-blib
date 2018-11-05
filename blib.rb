require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.1.2'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "7355372545e92946e9a5285bbd50620b19bcc9f8f135e6ba2196932019228871"

  def install
    system 'vim +\'%s#\$( cd "\${BASH_SOURCE\[0\]%\/\*}" && pwd )#' + prefix + '#g\' +w! +q blib.oo.sh'
    system "mv", "blib.oo.sh", "blib"
    bin.install "blib"
    prefix.install Dir["deps"], "Makefile", Dir["tests"]
  end

  test do
    system "make test"
  end
end
