require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.2.0'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "a95e8d7fb951c08a18b7ff0a4a7c95e1fa07dc31ac41c052afb8ac0f48bcdeee"

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
