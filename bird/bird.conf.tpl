debug protocols all;

# Override router ID
router id ${POD_IP};

protocol device {
  scan time 10;
}

protocol static lo{
  ipv4;
  route 10.254.0.5/32 via "lo"; 
}

protocol bgp {
  ipv4{
    import none;
    export filter {
      if proto = "lo" then accept;
      reject;
    };
  };
  local port 180 as 65010;
  neighbor 192.168.1.1 as 65000;
}
