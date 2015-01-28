# private global parameters class. Do not use directly!
class contrail::params (
    $host_ip,
    $uuid,
    $config_ip_list,
    $config_name_list,
    $compute_name_list,
    $control_ip_list,
    $control_name_list,
    $collector_name_list,
    $database_ip_list,
    $collector_ip_list,
    $webui_ip_list,
    $openstack_ip_list,
    $openstack_name_list,
    $compute_ip_list,
    $internal_vip = "",
    $external_vip = "",
    $contrail_internal_vip = "",
    $database_ip_port = "9160",
    $analytics_data_ttl = 48,
    $analytics_syslog_port = -1,
    $use_certs = False,
    $puppet_server = '',
    $database_initial_token = 0,
    $database_dir = "/var/lib/cassandra",
    $analytics_data_dir = "",
    $ssd_data_dir = "",
    $is_storage_master = false,
    $keystone_ip = "",
    $keystone_admin_token = "contrail123",
    $keystone_service_token = "c0ntrail123",
    $keystone_admin_user = "admin",
    #TODO get this from hiera
    $keystone_admin_password = "contrail123",
    $openstack_admin_password = "contrail123",
    $keystone_admin_tenant = "admin",
    $multi_tenancy = false,
    $zookeeper_ip_list = undef,
    $quantum_port = "9697",
    $quantum_service_protocol = "http",
    $keystone_auth_protocol = "http",
    $keystone_auth_port = 35357,
    $keystone_service_tenant = "service",
    $keystone_insecure_flag = false,
    $api_nworkers = 1,
    $haproxy = false,
    $keystone_region_name = "RegionOne",
    $manage_neutron = true,
    $neutron_service_protocol = "http",
    $openstack_manage_amqp = false,
    $amqp_server_ip = "",
    $zk_ip_port = '2181',
    $hc_interval = 5,
    $vmware_ip = "",
    $vmware_username = "",
    $vmware_password = "",
    $vmware_vswitch = "",
    $keepalived_vrid = 100,
    $root_password = "c0ntrail123",
    $mysql_root_password = "c0ntrail123",
    $openstack_mgmt_ip_list = undef,
    $encap_priority = "MPLSoUDP,MPLSoGRE,VXLAN",
    $router_asn = "64512",
    $host_non_mgmt_ip = "",
    $host_non_mgmt_gateway = "",
    $metadata_secret = "",
    $no_contrail_openstack = false,
    $vgw_public_subnet = "",
    $vgw_public_vn_name = "",
    $vgw_interface = "",
    $vgw_gateway_routes = "",
    $nfs_server = "",
    $orchestrator = "openstack",
    $contrail_repo_name,
    $contrail_repo_ip = $serverip,
    $openstack_passwd_list,
    $compute_passwd_list,
    $openstack_user_list,
    $contrail_repo_type,
    $host_roles,
    $storage_num_osd,
    $storage_fsid,
    $storage_num_hosts,
    $storage_monitor_secret,
    $osd_bootstrap_key,
    $storage_admin_key,
    $storage_virsh_uuid,
    $storage_monitor_hosts,
    $storage_osd_disks
) {
    if ($zookeeper_ip_list == undef) {
        $zk_ip_list_to_use = $config_ip_list
    }
    else {
        $zk_ip_list_to_use = $zookeeper_ip_list
    }

    if ($openstack_mgmt_ip_list == undef) {
        $openstack_mgmt_ip_list_to_use = $openstack_ip_list
    }
    else {
        $openstack_mgmt_ip_list_to_use = $openstack_mgmt_ip_list
    }
}