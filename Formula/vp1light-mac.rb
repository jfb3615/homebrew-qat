class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-1.1.tar.gz"
  sha256 "ebfb0529087a61cf41fc96294974710a4423359dd550c7934c7935bf941df583"
  depends_on "cmake" => :build
  depends_on "jfb3615/repo/vp1light-root"
  depends_on "jfb3615/repo/qat3d"
  depends_on "jfb3615/repo/vp1light-googletest"
  depends_on "jfb3615/repo/heputils"
  depends_on "jfb3615/repo/mcutils"
  depends_on "jfb3615/repo/heppdt"
  depends_on "clhep"
  def install
       ENV["ROOTSYS"] = "/usr/local"
       mkdir "builddir" do
       system "cmake", "../Projects/NewVP1Light", *std_cmake_args 
       system "make", "install" 
    end 
  end
end
