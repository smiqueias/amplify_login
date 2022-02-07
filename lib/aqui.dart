const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "amplifylogin": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://zn3bpita4zcezadrkfwfyoyoo4.appsync-api.sa-east-1.amazonaws.com/graphql",
                    "region": "sa-east-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-gxqehe5fpfav3nuwc6aebzt3ki"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://zn3bpita4zcezadrkfwfyoyoo4.appsync-api.sa-east-1.amazonaws.com/graphql",
                        "Region": "sa-east-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-gxqehe5fpfav3nuwc6aebzt3ki",
                        "ClientDatabasePrefix": "amplifylogin_API_KEY"
                    },
                    "amplifylogin_AWS_IAM": {
                        "ApiUrl": "https://zn3bpita4zcezadrkfwfyoyoo4.appsync-api.sa-east-1.amazonaws.com/graphql",
                        "Region": "sa-east-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "amplifylogin_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "sa-east-1:1f9ac2ae-3006-4bd0-b0ae-b12418fa9abe",
                            "Region": "sa-east-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "sa-east-1_CLaTuP2Lb",
                        "AppClientId": "u94d07kqt0b8827c9pprto0pk",
                        "Region": "sa-east-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [],
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                }
            }
        }
    }
}''';