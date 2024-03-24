class TaskPiggy < Formula
    desc "A simple task manager"
    homepage "https://github.com/kyoto-kanko/task-piggy"
    url "https://github.com/kyoto-kanko/task-piggy/archive/refs/tags/v0.1.1-beta.tar.gz"
    sha256 "9ed1bf2e9395ec81fd3b1411c2cf977c619a32e08ed807d87e5f73565a2c3426"
    license "MIT"
    depends_on "ruby"

    resource "thor" do
      url "https://rubygems.org/downloads/thor-1.3.0.gem"
      sha256 "1adc7f9e5b3655a68c71393fee8bd0ad088d14ee8e83a0b73726f23cbb3ca7c3"
    end
  
    def install
      system "gem", "install", "bundler"
      system "bundle", "config", "set", "--local", "without", "production"
      bin.install "app/main.rb" => "task-piggy"
    end


    def install
      ENV["GEM_HOME"] = libexec
  
      resources.each do |r|
        r.fetch
        system "gem", "install", r.cached_download, "--ignore-dependencies",
               "--no-document", "--install-dir", libexec
      end
  
      bin.install "bin/main"
  
      bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
    end
end
