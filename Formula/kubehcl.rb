class Kubehcl < Formula
    desc "kubehcl allows deployment to kubernetes using hcl configuration language"
    homepage "https://github.com/yanir75/kubehcl"
    url "https://github.com/yanir75/kubehcl/releases/download/v0.1.9/kubehcl.tar.gz", using: :curl
    sha256 "8877daf4ea7897cffea062cf9f5cf012130430ddbe1e657b897ab5377cb1850f" # SHA256 checksum of the tarball
  
    # If your app has dependencies, you can add them like this:
    # depends_on "dependency-name"
      
    def install
      bin.install "kubehcl"
    end
  
    test do
      system "#{bin}/kubehcl", "license"
    end
  end