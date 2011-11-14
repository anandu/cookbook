template "/etc/motd" do
    source "motd.erb"
#    variables( :ntp_server => "time.nist.gov" )
#    not_if {true}
end
