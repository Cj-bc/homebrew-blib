require "formula"

class Blib < Formula
  homepage "https://github.com/Cj-bc/blib"
  version '0.2.2'
  url "https://github.com/Cj-bc/blib/archive/v" + version + ".tar.gz"
  sha256 "6d0f7a9f479a6d250c9e9c1ba70f864eda1cc8e274eab70152bc6a1dc167e690"

  def install
    system "make root=#{prefix} FORCE_INSTALL=true install"
  end

  test do
    system "make root=#{prefix} test"
  end
end
