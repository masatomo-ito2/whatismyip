data "http" "my_ip" {
	url = "https://api.ipify.org?format=json"
}

output "my_ip" {
	value = "${data.http.my_ip.body}/32"
}
