//resource "aws_docdb_cluster" "docdb" {
//  cluster_identifier = "roboshop-${var.ENV}"
//  engine             = "docdb"
//  master_username    = "admin1"
//  master_password    = "roboshop1"
//  ## This is just for lab purpose
//  skip_final_snapshot = true
//}

resource "aws_docdb_subnet_group" "docdb" {
  name       = "roboshop-${var.ENV}"
  subnet_ids = data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS

  tags = {
    Name = "roboshop-${var.ENV}"
  }
}

