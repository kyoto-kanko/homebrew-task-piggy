class TaskPiggy < Formula
    desc "A simple task manager"
    homepage "https://github.com/kyoto-kanko/task-piggy"
    url "https://github.com/kyoto-kanko/task-piggy/releases/download/v0.1.0-beta/task-piggy.tar.gz"
    sha256 "77665a61e1eee07f51873e319bff732975de104c887b51ab0cf09d49711066c9"
    version "0.1.0-beta"
    depends_on "ruby"
  
    def install
      # シェバングはリポジトリ内のファイルに含まれるべき
      bin.install "app/main.rb" => "task-piggy"
    end
  
    test do
      # 実際にコマンドが実行できるかの最小限のテスト
      system "#{bin}/task-piggy", "help"
    end
  end
  