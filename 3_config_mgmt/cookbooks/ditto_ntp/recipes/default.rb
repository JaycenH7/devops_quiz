package "ntp"

file "/etc/ntp.conf" do
  content "# ntp configuration goes here"
end

ntp_service = "ntp"

case node['platform_family']
  when 'rhel'
    ntp_service = "ntpd"
end

service ntp_service do
  action [:enable, :start]
end
