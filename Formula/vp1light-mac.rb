class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-2.0.tar.gz"
  sha256 "82a8fe9250e6cfe8a129fe53740a3c87c09d73358f8a98169e8cb4d1144554d2"
  depends_on "cmake" => :build
  depends_on "jfb3615/repo/vp1light-root"
  depends_on "jfb3615/repo/coin-bb"
  depends_on "jfb3615/repo/simage-bb"
  depends_on "jfb3615/repo/soqt-bb"
  depends_on "jfb3615/repo/vp1light-googletest"
  depends_on "jfb3615/repo/heputils"
  depends_on "jfb3615/repo/mcutils"
  depends_on "jfb3615/repo/heppdt"
  depends_on "boost"
  depends_on "clhep"
  depends_on "eigen"
  def install
       ENV.deparallelize  
       ENV["ROOTSYS"]    = "/usr/local"
       ENV["LIBPATH"]    = "/usr/local/lib/root"
       ENV["SHLIB_PATH"] = "/usr/local/lib/root"
       mkdir "builddir" do
       system "echo $PATH "
       system "cmake", "../Projects/NewVP1Light", "-DCMAKE_CXX_COMPILER=/usr/bin/clang++", *std_cmake_args 
       system "make", "install" 
    end 
  end
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    rebuild 2
    sha256 "fc1147d9aef47795a1f42e1db6da3cd1c0354a3c80d97cbb9309d94904ae5195" => :high_sierra
    rebuild 3
    sha256 "b0d4eae81a83c4a96d9d239a805a86b46cc6e806e2a2a661126874e4226e73e3" => :mojave
  end


end

