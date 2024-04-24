function sso ()
{
  if [[ $# == 0 ]]; then
    aws sso login --profile default
    export AWS_PROFILE=default
  else
    aws sso login --profile $1
    export AWS_PROFILE=$1
  fi
}