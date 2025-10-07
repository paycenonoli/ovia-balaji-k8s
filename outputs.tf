##################################
# EKS Cluster Outputs
##################################

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.eks_cluster.name
}

output "cluster_endpoint" {
  description = "API server endpoint of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "cluster_certificate_authority_data" {
  description = "Certificate authority data for connecting kubectl"
  value       = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "cluster_arn" {
  description = "EKS cluster ARN"
  value       = aws_eks_cluster.eks_cluster.arn
}

##################################
# Node Group Outputs
##################################

output "node_group_name" {
  description = "EKS managed node group name"
  value       = aws_eks_node_group.managed_nodes.node_group_name
}

output "node_role_arn" {
  description = "IAM Role ARN for worker nodes"
  value       = aws_iam_role.eks_node_role.arn
}

##################################
# Networking Outputs
##################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.eks_vpc.id
}

output "subnet_ids" {
  description = "Subnet IDs used by the EKS cluster"
  value       = aws_subnet.eks_subnets[*].id
}