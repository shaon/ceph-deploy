node['ceph']['mds_hosts'].each do |mds|
  execute "install ceph on mons" do
    command "ceph-deploy mds create #{mds}"
  end
end
