require "formula"

class Hevea < Formula
  homepage "http://hevea.inria.fr/"
  url "http://hevea.inria.fr/distri/hevea-2.16.tar.gz"
  sha1 "729438f4c37240df7b20053dec18e9ee17d19d46"

  bottle do
    sha1 "657486337d169647d9c10afb61516e38ae1bf772" => :mavericks
    sha1 "0e1fe3dd6b1b21fbf435738f329473c1e6130e38" => :mountain_lion
    sha1 "4766e826da52e595f679c699c836bcfb141dfdbd" => :lion
  end

  depends_on "objective-caml"
  depends_on "ghostscript" => :optional

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
