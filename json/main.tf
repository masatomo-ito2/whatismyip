data "http" "my_ip" {
	url = "https://api.ipify.org?format=json"
}

output "ip" {
	value = jsondecode( data.http.my_ip.body ).ip
}
