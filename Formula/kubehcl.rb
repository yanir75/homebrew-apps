class Kubehcl < Formula
    desc "kubehcl allows deployment to kubernetes using hcl configuration language"
    homepage "https://github.com/yanir75/kubehcl"
    url "https://github.com/yanir75/kubehcl/releases/download/v0.2.2/kubehcl.tar.gz", using: :curl
    sha256 "27ecec5ec4671f453ae630f75ea55cd24d983e18ed15674a0fe4494228577960" # SHA256 checksum of the tarball
  
    # If your app has dependencies, you can add them like this:
    # depends_on "dependency-name"
      
    def install
      bin.install "kubehcl"
    end
  
    test do
      system "#{bin}/kubehcl", "license"
    end
  end