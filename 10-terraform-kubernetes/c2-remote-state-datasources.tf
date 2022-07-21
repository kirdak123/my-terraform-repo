data "terraform_remote_state" "eks" {
    backend = "local"
    config {
        path = "../09-terraform-eks-cluster"
    }   
}
