package "httpd-tools"

bash "Copy Config File" do
  code "cp /root/app #{node[:nginx][:dir]}/sites-available/app"
  only_if { File.exists?("/root/app") }
end