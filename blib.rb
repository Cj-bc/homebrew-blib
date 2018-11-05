require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.1.0'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "d9e4a3a2e92d8daf31862a9bad941147537df0267dc14099b305540cad41fc9c"

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
