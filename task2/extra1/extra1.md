# extra task1

## Steps:

----

+ VPC:
  + Created VPC-1 with block addresses 10.0.0.0/24
  + Created VPC-2 with block addresses 10.0.1.0/24
+ Subnets:
  + Created VPC-1 subnet 10.0.0.0/28
  + Created VPC-2 subnet 10.0.1.0/28
+ VPC Internet Gateway:
  + Created VPC-1 Internet gateway and associated with VPC-1
  + Created VPC-2 Internet gateway and associated with VPC-2
+ Routes:
  + Added routes tables for both VPC 0.0.0.0/0 through Internets Gateaway
+ Peering created:
  + VPC-1 peering requester
  + VPC-2 accepter
  + request accepted
+ Routes update:
  + In VPC-1 routes table 10.0.1.0/28 -> PeeringConnection
  + In VPC-2 routes table 10.0.0.0/28 -> PeeringConnection
+ SSH keys have been added