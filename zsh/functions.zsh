function sso ()
{
  if [[ $# == 0 ]]; then
    aws sso login --profile default
    export AWS_PROFILE=default
  else
    aws sso login --profile $1
    export AWS_PROFILE=$1
  fi

  if [[ $2 -eq 0 ]]; then
    export AWS_REGION=eu-north-1
  else
    export AWS_REGION=$2
  fi
}
