# Sets NTP client
package "ntp" do
    action [:install]
end

template "/etc/ntp.conf" do
    source "ntp.conf.erb"
    variables( :ntp_server => "time.nist.gov" )
    not_if {::File.exists?("/etc/ntp.conf")}
end

service "ntpd" do
    action[:enable,:start]
end
