data "aws_ami" "amazon-linux-2" {
    most_recent = true

    filter {
        name   = "owner-alias"
        values = ["amazon"]
    }

    filter {
        name   = "name"
        values = ["amzn2-ami-hvm*"]
    }
}


data "aws_iam_policy" "ssm_policy" {
    arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
