## HPC job management with a serverless API
The code in this repository accompanies the [How to manage HPC jobs using a serverless API](https://aws.amazon.com/blogs/hpc/how-to-manage-hpc-jobs-using-a-serverless-api/) blog post.  The contents can be used to create a serverless API to interact with a [AWS ParallelCluster](https://aws.amazon.com/hpc/parallelcluster/) environment. To accomplish this, the following AWS services are used:

* [AWS Serverless Application Model](https://aws.amazon.com/serverless/sam/) (AWS SAM) is an open-source framework for building serverless applications. It provides shorthand syntax to express functions, APIs, databases, and event source mappings.  AWS SAM is used to deploy and manage resources such as the Amazon API Gateway API and a backend AWS Lambda function.
* [Amazon API Gateway](https://aws.amazon.com/api-gateway/) is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale. APIs act as the "front door" for applications to access data, business logic, or functionality from your backend services. We use Amazon API Gateway as central point of access to the AWS ParallelCluster cluster.
* [AWS Lambda](https://aws.amazon.com/lambda/) is a serverless compute service that lets you run code without provisioning or managing servers, creating workload-aware cluster scaling logic, maintaining event integrations, or managing runtimes. Amazon API Gateway uses AWS Lambda to execute the SSM command on the Scheduler head node and return the results.
* [AWS Systems Manager](https://aws.amazon.com/systems-manager/) provides a unified user interface so you can track and resolve operational issues across your AWS applications and resources from a central place. With Systems Manager, you can automate operational tasks for Amazon EC2 instances. The solution uses AWS Systems Manager to execute the scheduler commands on the AWS ParallelCluster head node.

For detailed guidance for working with the code in this repository, see the [blog post](https://aws.amazon.com/blogs/hpc/how-to-manage-hpc-jobs-using-a-serverless-api/).

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

