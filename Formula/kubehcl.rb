class Kubehcl < Formula
    desc "kubehcl allows deployment to kubernetes using hcl configuration language"
    homepage "https://github.com/yanir75/kubehcl"
    url "https://github.com/yanir75/kubehcl/releases/download/v0.2.4/kubehcl.tar.gz", using: :curl
    sha256 "6792310f5aa8c9931cc478e76c3768a6ed73829535c20d477c76b61723adfc09" # SHA256 checksum of the tarball
  
    # If your app has dependencies, you can add them like this:
    # depends_on "dependency-name"
      
    def install
      bin.install "kubehcl"
    end
  
    test do
      system "#{bin}/kubehcl", "license"
    end
  end