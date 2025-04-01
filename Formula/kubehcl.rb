class Kubehcl < Formula
    desc "kubehcl allows deployment to kubernetes using hcl configuration language"
    homepage "https://github.com/yanir75/kubehcl" # Your app's homepage URL
    url "https://github.com/yanir75/kubehcl/archive/refs/tags/v0.1.0.zip" # The URL of your tarball or zip file
    sha256 "d61874663de9c5793269f63626129fd57a249f24d661df428c301b582d6bca8c" # SHA256 checksum of the tarball
  
    # If your app has dependencies, you can add them like this:
    # depends_on "dependency-name"
  
    depends_on "go" => :build

    def install
      system "go", "build", "-o", bin/"kubehcl"
    end
  
    test do
      system "#{bin}/kubehcl", "license"
    end
  end