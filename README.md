## HPC job management with a serverless API
Blog post [link](https://aws.amazon.com/blogs/hpc/how-to-manage-hpc-jobs-using-a-serverless-api/).
The contents can be used to create a serverless API to interact with a [AWS ParallelCluster](https://aws.amazon.com/hpc/parallelcluster/) environment. To accomplish this, the following AWS services are used:

* [AWS Serverless Application Model](https://aws.amazon.com/serverless/sam/) (AWS SAM) is an open-source framework for building serverless applications. It provides shorthand syntax to express functions, APIs, databases, and event source mappings.  AWS SAM is used to deploy and manage resources such as the Amazon API Gateway API and a backend AWS Lambda function.
* [Amazon API Gateway](https://aws.amazon.com/api-gateway/) is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale. APIs act as the "Entry point" for applications to access data, business logic, or functionality from your backend services. We use Amazon API Gateway as central point of access to the AWS ParallelCluster cluster.
* [Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html) automatically distributes your incoming traffic across multiple targets, such as EC2 instances, containers, and IP addresses, in one or more Availability Zones. We use the internal Application Load Balancer to allow the communication between the VPC Link and the Slurm rest APi running in the cluster Head Node.
* [VPC links](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-vpc-links.html) enable you to create private integrations that connect your HTTP API routes to private resources in a VPC, such as Application Load Balancers or Amazon ECS container-based applications. We use VPC link to allow the communication between the API Gateway and the internal Application Load Balancer.


## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

