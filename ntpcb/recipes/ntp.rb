# Sets NTP client
tempdir = node[:ntpcb][:tempdir]
include_recipe "ntpcb::motds"
package "ntp" do
    action [:install]
end

template "/etc/ntp.conf" do
    source "ntp.conf.erb"
    variables( :ntp_server => "time.nist.gov" )
    not_if {::File.exists?("/etc/ntp.conf")}
end

template "#{tempdir}/motd.conf" do
    source "motd.erb"
end

service "ntpd" do
    action[:enable,:start]
end
