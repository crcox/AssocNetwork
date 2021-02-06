acquisition_network <- function(ix, network_of_words){
  assertthat::are_equal(nrow(network_of_words), ncol(network_of_words))
  assertthat::assert_that(all(rownames(network_of_words) %in% colnames(network_of_words)))
    if (all(rownames(network_of_words) == colnames(network_of_words))) {
    ixc <- ix
  } else {
    ixc <- which(colnames(network_of_words) %in% rownames(network_of_words)[ix])
  }
  return(network_of_words[ix, ixc])
}

random_acquisition_network <- function(vocab_size, network_of_words){
  env_size <- nrow(network_of_words)
  ix <- sample(x = env_size, size = vocab_size, replace = FALSE)
  return(acquisition_network(ix, network_of_words))
}

child_acquisition_network <- function(child_vocab, network_of_words){
  ix <- which(rownames(network_of_words) %in% child_vocab)
  return(acquisition_network(ix, network_of_words))
}

random_acq_network_igraph <- function(vocab_size, G){
  env_size <- igraph::V(G)
  ix <- sample(x = env_size, size = vocab_size, replace = TRUE)
  return(igraph::induced_subgraph(G, ix))
}


