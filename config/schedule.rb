# https://gist.github.com/mdesantis/5356195
set :env_path,    '"$HOME/.rbenv/shims":"$HOME/.rbenv/bin"'
job_type :script, %q{ cd :path && PATH=:env_path:"$PATH" bundle exec ruby script/:task :output }

every 1.minute do
  script 'stand_up_mtg.rb'
end
