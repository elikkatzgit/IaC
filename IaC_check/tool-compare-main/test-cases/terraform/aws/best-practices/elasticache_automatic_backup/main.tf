resource "aws_elasticache_cluster" "default" {
  cluster_id           = "cluster"
  engine               = "redis"
  node_type            = "cache.m5.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"
}

resource "aws_elasticache_cluster" "disabled" {
  cluster_id           = "cluster"
  engine               = "redis"
  node_type            = "cache.m5.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"

  snapshot_retention_limit = 0
}
