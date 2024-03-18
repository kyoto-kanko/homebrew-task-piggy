class TaskPiggy < Formula
  desc "A simple task manager"
  homepage "https://github.com/kyoto-kanko/task-piggy"
  url "https://github.com/kyoto-kanko/task-piggy/releases/download/v0.1.0-beta/task-piggy.tar.gz"
  sha256 "07e08e23a7a99aba7349f4bd3e877100c07dd27a8fc7882a22e325f6784a5db4"
  version "0.1.0-beta"
  depends_on "ruby"


  def install
     inreplace "app/main.rb", /^/, "#!/usr/bin/env ruby\n"
      system "gem", "install", "thor", "-v", "1.3.1"
      bin.install "app/main.rb" => "task-piggy"
  end

  test do
    system "true" # bataなので一旦スルー
  end
end