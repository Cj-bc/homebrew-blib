require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.1.2'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "e46aaa0c50a364d217fec6ae957a881cef8d677a2c570ae3067fa9d356e3d64e"

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
