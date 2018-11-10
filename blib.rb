require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.2.3'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "cc08825f41e0b85fddaf56288f1fbe29723a05793b0535f896cfef1031fc9bbc"

  def install
    system "make root=#{prefix} FORCE_INSTALL=true install"
  end

  test do
    system "make root=#{prefix} test"
  end
end
