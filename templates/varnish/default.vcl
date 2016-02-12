backend default {
    .host = "80.249.164.116";
    .port = "80";
    .first_byte_timeout     = 300s;
    .connect_timeout        = 5s; 
    .between_bytes_timeout  = 2s;
}

sub vcl_recv {
  set req.http.host="www.heviz.hu";
}
