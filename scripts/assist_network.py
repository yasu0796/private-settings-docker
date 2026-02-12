#!/usr/bin/env python3
import hashlib
import ipaddress
import sys

def allocate_subnet(base_network, prefixlen, key):
    # Base network
    network = ipaddress.ip_network(base_network)

    # Generate a list of available subnets
    subnets = list(network.subnets(new_prefix=prefixlen))

    # Hash the input key to determine the index
    hash_value = hashlib.sha3_512(key.encode()).hexdigest()
    index = int(hash_value, 16) % len(subnets)

    # Allocate the subnet
    allocated_subnet = subnets[index]
    return allocated_subnet

def main():
    if len(sys.argv) != 2:
        print(f"Usage: python {sys.argv[0]} <key>")
        sys.exit(1)
    
    key = sys.argv[1]
    subnet = allocate_subnet("10.255.0.0/16", 29, key)
    print(f"Allocated subnet: {subnet}")

if __name__ == "__main__":
    main()
