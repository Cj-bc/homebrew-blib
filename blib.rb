require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.2.1'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "93612fe110cb2601d181253d2a50e0309c5b45c5ce3491e8c93550f32f53a60e"

  def install
    system 'make', "root=#{prefix}", "install"
  end

  test do
    system "make root=#{prefix} test"
  end
end
