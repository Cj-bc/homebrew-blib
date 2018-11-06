require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.2.0'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "a95e8d7fb951c08a18b7ff0a4a7c95e1fa07dc31ac41c052afb8ac0f48bcdeee"

  def install
    system 'make', "root=#{prefix}", "install"
  end

  test do
    system "make test"
  end
end
