debug protocols all;

protocol device {
  scan time 10;
}

protocol static lo{
  ipv4;
  route 10.254.0.0/16 via "lo"; 
}

protocol static lo6{
  ipv6;
  route fd99:261a:03e3:9d21::/64 via "lo"; 
}

protocol bgp {
  ipv4{
    import none;
    export filter {
     if proto = "lo" then accept;
      reject;
    };
  };
  local port 180 as 65020;
  neighbor 192.168.1.1 as 65000;
}

protocol bgp {
  ipv6{
    import none;
    export filter {
      if proto = "lo6" then accept;
      reject;
    };
  };
  local port 181 as 65020;
  neighbor 2600:1700:7e60:c7df::1 as 65000;
}

