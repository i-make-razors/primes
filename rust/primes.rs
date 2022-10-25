fn main()
{
  let mut num_primes = 0;

  for i in 3..250000
  {
    num_primes += is_prime(i);
  }

  println!("{}", num_primes);
}

fn is_prime(n:i32) -> i32
{
  for i in 2..n/2
  {
    if (n%i) == 0
    {
      return 0;
    }
  }

  return 1;
}
