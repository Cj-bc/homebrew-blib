require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.1.3'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "da08e0f53d98dbc028c91c72099cf2503737808df9cd23a5bff230b10f5808dd"

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
