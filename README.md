# Primes

Collection of small functions to calculate prime numbers for performance testing

``` bash
# Dotnet
dotnet build --project dotnet
time dotnet run --project dotnet

# C
gcc c/primes.c -o primes
time ./primes

# Assembly
as asm/primes.s -o asm/primes.o
gcc asm/primes.o -o primes
time ./asm/primes

#Python
time python3 python/primes.py

#Rust
rustc rust/primes.rs
./rust/primes
```

## Results

Results were calculated using the linux `time` function and run in WSL on the same computer

| Language       | Time to Run |
| -------------- | ----------- | 
| x86 Assembly   |      2.486s | 
| C              |      3.683s |
| C#             |      5.711s |
| Rust           |     21.599s |
| Python         |     50.280s |
