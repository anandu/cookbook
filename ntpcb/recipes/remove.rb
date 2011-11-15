tempdir = node[:ntpcb][:tempdir]
#%w{dir1 dir2 dir3}.each do |dir|
directory "#{tempdir}/dir1" do
  recursive true
  action :delete
end
