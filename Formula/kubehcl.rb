class Kubehcl < Formula
    desc "kubehcl allows deployment to kubernetes using hcl configuration language"
    homepage "https://github.com/yanir75/kubehcl"
    url "https://github.com/yanir75/kubehcl/releases/download/v0.1.5/kubehcl.tar.gz", using: :curl
    sha256 "984e2960fb821cbdea0d03e8c3cfc8d1d9f4ad29fd156f9ae8d8c8ba08ce069a" # SHA256 checksum of the tarball
  
    # If your app has dependencies, you can add them like this:
    # depends_on "dependency-name"
      
    def install
      bin.install "kubehcl"
    end
  
    test do
      system "#{bin}/kubehcl", "license"
    end
  end