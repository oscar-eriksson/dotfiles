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

function invoke-lambda() {
  if [[ $# -lt 2 ]]; then
    echo "Usage: invoke-lambda <lambda-arn> <json-file>"
    echo "Example: invoke-lambda arn:aws:lambda:eu-north-1:123456789012:function:myFunction input.json"
    return 1
  fi

  local lambda_arn="$1"
  local json_file="$2"

  # Check if the JSON file exists
  if [[ ! -f "$json_file" ]]; then
    echo "Error: JSON file '$json_file' not found"
    return 1
  fi

  # Validate JSON file
  if ! jq empty "$json_file" 2>/dev/null; then
    echo "Error: Invalid JSON file"
    return 1
  fi

  aws lambda invoke \
    --function-name "$lambda_arn" \
    --payload file://"$json_file" \
    --cli-binary-format raw-in-base64-out \
    --invocation-type RequestResponse \
    /dev/stdout \
    | jq .
}
