data "http" "my_ip" {
	url = "http://whatismyip.akamai.com/"
}

output "my_ip" {
	value = "${data.http.my_ip.body}/32"
}
