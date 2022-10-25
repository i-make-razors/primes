
int isPrime(int n)
{
  for(var i=2; i<=n/2; i++)
  {
    if ((n%i) == 0)
    {
      return 0;
    }
  }

  return 1;
}

var numPrimes = 0;

for (var i=2; i<250001; i++)
{
  numPrimes += isPrime(i);
}

Console.WriteLine(numPrimes.ToString());


