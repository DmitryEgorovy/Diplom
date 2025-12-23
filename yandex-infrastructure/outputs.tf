output "bastion_external_ip" {
  value = yandex_compute_instance.bastion.network_interface.0.nat_ip_address
}

output "zabbix_external_ip" {
  value = yandex_compute_instance.zabbix.network_interface.0.nat_ip_address
}

output "kibana_external_ip" {
  value = yandex_compute_instance.kibana.network_interface.0.nat_ip_address
}

output "load_balancer_ip" {
  value = yandex_lb_network_load_balancer.web.listener.*.external_address_spec[0].*.address
}

output "web_servers_ips" {
  value = {
    web1 = yandex_compute_instance.web1.network_interface.0.ip_address
    web2 = yandex_compute_instance.web2.network_interface.0.ip_address
  }
}
