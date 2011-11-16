tempdir = node[:ntpcb][:tempdir]

#cron "noop" do
#  hour "#{node[:ntpcb][:cron_backup_hr]}"
  #hour "1"
#  minute "0"
#  command "/sbin/ifconfig"
#end

#%w{dir1 dir2 dir3}.each do |dir|
   #new_resource "#{tempdir}/#{dir}" do
   new_resource "#{tempdir}" do
      action :mkd
   end
#end
