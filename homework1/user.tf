provider aws {
    region = "us-east-2"
} 

resource "aws_iam_user" "lb" {
  for_each = toset(["jenny", "rose", "lisa", "jisoo"])
  name = each.value
}

resource "aws_iam_user" "lb2" { 
  for_each = toset(["jihyo", "sana", "momo", "dahyun"])
  name = each.value
}


resource "aws_iam_group" "developers" {
  name = "blackpink"
}

resource "aws_iam_group" "developers2" {
  name = "twice"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    for i in aws_iam_user.lb : i.name
  ]

  group = aws_iam_group.developers.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership2"

  users = [
    for i in aws_iam_user.lb2 : i.name
  ]

  group = aws_iam_group.developers2.name
}



resource "aws_iam_user" "lb3" {
  name = "miyeon"
}

resource "aws_iam_user" "lb4" {
  name = "mina"
}

#terraform import aws_iam_user.lb3 miyeon
#terraform import aws_iam_user.lb4 mina

resource "aws_iam_group_membership" "team3" {
  name = "tf-testing-group-membership3"

  users = [
    aws_iam_user.lb3.name
  ]

  group = aws_iam_group.developers.name
}

resource "aws_iam_group_membership" "team4" {
  name = "tf-testing-group-membership4"

  users = [
    aws_iam_user.lb4.name
  ]

  group = aws_iam_group.developers2.name
}