class Kubehcl < Formula
    desc "kubehcl allows deployment to kubernetes using hcl configuration language"
    homepage "https://github.com/yanir75/kubehcl"
    url "https://github.com/yanir75/kubehcl/releases/download/v0.1.6/kubehcl.tar.gz", using: :curl
    sha256 "fa69e7de2e60be50be6b646cad72276ffecc8ff78ef136977d8fe3dfff6525f4" # SHA256 checksum of the tarball
  
    # If your app has dependencies, you can add them like this:
    # depends_on "dependency-name"
      
    def install
      bin.install "kubehcl"
    end
  
    test do
      system "#{bin}/kubehcl", "license"
    end
  end