stack_order do
  bootstrap 'ceph::all-in-one'
  bootstrap 'ceph::setup-mons'
  bootstrap 'ceph::setup-osds'
  bootstrap 'ceph::setup-admin'
  bootstrap 'ceph::setup-mds'
end

component 'ceph' do
  description "ceph cookbook application"

  group 'all-in-one' do
    recipe 'ceph-cookbook::default'
    recipe 'ceph-cookbook::mons'
    recipe 'ceph-cookbook::osds'
    recipe 'ceph-cookbook::admin'
    recipe 'ceph-cookbook::mds'
  end

  group 'setup-osds' do
    recipe 'ceph-cookbook::osds'
  end

  group 'setup-mons' do
    recipe 'ceph-cookbook::default'
    recipe 'ceph-cookbook::mons'
  end

  group 'setup-admin' do
    recipe 'ceph-cookbook::admin'
  end

  group 'setup-mds' do
    recipe 'ceph-cookbook::mds'
  end
end
