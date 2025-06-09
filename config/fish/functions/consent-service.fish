function consent-service
    # uses aws cli to invoke test-method on the api gateway

    set env $argv[1]
    set region $argv[2]
    set method $argv[3]
    set path $argv[4]
    set resource_id $argv[5]

    # Example hardcoded mapping of API Gateway IDs
    set -l api_map_dev_us-west-2 h95uu6pxza
    set -l api_map_prod_us-west-2 wxyz9012
    set -l api_map_prod_eu-west-1 lmno3456

    # Construct key and look up API ID
    set key "api_map_{$env}_{$region}"
    set rest_api_id (eval echo \$$key)

    if test -z "$rest_api_id"
        echo "❌ No API Gateway ID found for env=$env region=$region"
        return 1
    end

    echo "➡️  Invoking $method $path on API $rest_api_id (resource $resource_id) in $region"

    aws apigateway test-invoke-method \
        --rest-api-id "$rest_api_id" \
        --resource-id "$resource_id" \
        --http-method "$method" \
        --region "$region" \
        --path-with-query-string "$path" \
        --body '{}' \
        --headers 'Content-Type=application/json' \
        --profile "saas-app-{$env}"
end
