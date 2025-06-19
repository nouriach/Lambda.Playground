using Amazon.Lambda.Core;

// Assembly attribute to enable the Lambda function's JSON input to be converted into a .NET class.
[assembly: LambdaSerializer(typeof(Amazon.Lambda.Serialization.SystemTextJson.DefaultLambdaJsonSerializer))]

namespace MyFirstLambda;

public class Function
{
    /// <summary>
    /// A simple function that returns a message
    /// </summary>
    /// <param name="context">The ILambdaContext that provides methods for logging and describing the Lambda environment.</param>
    /// <returns></returns>
    public string FunctionHandler(ILambdaContext context)
    {
        Console.WriteLine("---> Inside Function Handler");
        return "Hello from FunctionHandler";
    }
}
