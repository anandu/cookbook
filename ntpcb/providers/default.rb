action :mkd do
  # Select recipe to make dir
  # recipe = new_resource.cront
  directory "#{tempdir}" do
  mode 0775
  owner "root"
  group "root"
  action :create
  recursive true
end
