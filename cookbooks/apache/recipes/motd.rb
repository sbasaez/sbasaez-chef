hostname = node['hostname']
file '/etc/motd' do
	content "El hostname es: #{hostname}"
end
