tempdir = node[:sys][:tempdir]
cron "noop" do
  hour "1"
  minute "0"
  command "/sbin/ifconfig"
end
%w{dir1 dir2 dir3}.each do |dir|
   directory "#{tempdir}/#{dir}" do
      mode 0775
      owner "root"
      group "root"
      action :create
      recursive true
   end
end
