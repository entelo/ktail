#!/usr/bin/env ruby

trap 'SIGINT' do
  exit
end

class Ktail
  def run
    loop do
      tail
      sleep 5
      kill
    end
  end

  def tail
    pod_names.each do |pod_name|
      Thread.new { system(%{kubectl logs #{pod_name} -f --tail=1 | sed "s/^/[#{pod_name}] /"}) }
    end
  end

  def kill
    system("pkill -f 'kubectl logs'")
  end

  def pod_names
    `kubectl get pods -o=name`.gsub('pod/', '').split("\n")
  end
end

Ktail.new.run
