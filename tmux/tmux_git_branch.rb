require "fileutils"

colors = {
  :red   => "red",
  :green => "green",
  :grey  => "#111111",
  :pink  => "#ee9999",
  :light_grey => "#222222"
}

tmux_pane_path = `tmux display-message -p "#\{pane_current_path}"`.chomp

FileUtils.cd(tmux_pane_path)
status = `git status --porcelain -b -u`

/## (?<branch_name>[.\/\w-]+(:? \(no branch\))?).*(?<dirty>\n[ MADRCU?]{2} .*)*/ =~ status

branch_color = dirty ? :red : :green

unless branch_name.nil?
  print "#[bg=#{colors[:grey]}]#[fg=#{colors[branch_color]}] #{branch_name} #[fg=#{colors[:grey]}]#[bg=#{colors[:light_grey]}]#[fg=#{colors[:pink]}]>#[fg=default]"
end

path, folder = tmux_pane_path.chomp.split(/\/([^\/]+)$/)

print "#[bg=#%{light_grey}]" % colors

if folder.nil?
  print "#[fg=yellow] #{path} "
else
  print(" #{path} ~>#[fg=yellow] #{folder} ")
end

print "#[fg=#{colors[:light_grey]}]#[bg=default]>#[fg=default]"
