$TTL    604800
@       IN      SOA     ns1.derav-company.com. root.derav-company.com. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
     IN      NS      ns1.derav-company.com.

; name servers - A records
ns1.derav-company.com.          IN      A      172.20.0.2

git.derav.app.        IN      A      172.20.0.3
test.derav.app.        IN      A      172.20.0.4
