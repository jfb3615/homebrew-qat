class Geomodeltools < Formula

  desc "GeoModelTools"
  homepage "https://gitlab.cern.ch/GeoModelDev"
   
  url "https://qat.pitt.edu/GeoModel-4.2.1.tar.gz"
  sha256 "2e000a90de06264227ef902abea5aa305dc2050a270f6bd073bdf6542a060dec"
  
  head do
    url "https://gitlab.cern.ch/GeoModelDev/GeoModel.git"
    version "master"
  end

  
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any, big_sur: "7e744169196cbad9d40e0c5f965021b2e5e5cda5ad3b7d2df59c4d7fd6d320cb"
  end


  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "jfb3615/repo/geomodelcore"

  # INSTALLATION INSTRUCTIONS
  def install
    mkdir "build" do
      system "cmake", "-G", "Unix Makefiles", "../GeoModelTools", *std_cmake_args
      system "make"
      system "make", "install"
   end
  end
  

end
