package main

var appConfig = AppConfig{
	LogglyToken:             "customize",
	VpcSubnet:               "customize",
	SecurityGroup:           "customize",
	Keyname:                 "customize",
	AmiID:                   "customize",
	WorkerUsername:          "customize",
	AwsAccessKey:            "customize",
	AwsSecretKey:            "customize",
	IamInstanceProfile:      "customize",
	Environment:             "dev",
	FlushDurationSeconds:    5,
	GatlingInitialMemory:    "256M",
	GatingMaxMemory:         "512M",
	GatlingRoot:             "/tmp/gatling",
	SkipInstanceCreation:    false,
	FallbackWorkerIPAddress: "",
}
