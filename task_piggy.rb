class TaskPiggy < Formula
    desc "A simple task manager"
    homepage "https://github.com/kyoto-kanko/task-piggy"
    url "https://github.com/kyoto-kanko/task-piggy/releases/download/v0.1.0-beta/task-piggy.tar.gz"
    sha256 "f610c6de72bb916ef6b6d47caf263923c9b996a2ae4566445410bbbb31a95036"
    depends_on "ruby"
  
    def install
      system "gem", "install", "bundler"
      system "bundle", "config", "set", "--local", "without", "production"
      bin.install "app/main.rb" => "task-piggy"
    end
  
    test do
      system "#{bin}/task-piggy", "help"
    end
end
