resource "aws_vpc" "project_vpc" {
  cidr_block = var.vpcid

  tags = {
    Name = "project_database_vpc"
  }

}

resource "aws_internet_gateway" "project_gw" {
  vpc_id = aws_vpc.project_vpc.id

}

resource "aws_eip" "ip" {
}

resource "aws_nat_gateway" "project_nat" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.pub_sub1.id

}