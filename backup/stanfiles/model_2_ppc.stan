data {
  int N;
  real carat[N];
}

generated quantities {
    real alpha = normal_rng(617, 5); 
    real beta_1 = normal_rng(-3957, 5);
    real beta_2 = normal_rng(12740, 5);
    real beta_3 = normal_rng(-4797, 5);
    real beta_4 = normal_rng(515, 5);
    real sigma = exponential_rng(5);
    real price [N];
    for (i in 1:N) {
        price[i] = normal_rng(alpha + beta_1 * carat[i] + beta_2 * carat[i]^2 + beta_3 * carat[i]^3 + beta_4 * carat[i]^4, sigma);
    }
}