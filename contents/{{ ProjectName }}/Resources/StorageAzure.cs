using Azure.Storage.Blobs;
using Azure.Storage;

namespace {{ ProjectName }}.Resources;

public static class StorageAzureExtensions
{
    public static IServiceCollection AddStorageAzure(this IServiceCollection services, Settings settings)
    {
        var credential = new StorageSharedKeyCredential(
            settings.AzureAccountName, settings.AzureAccountKey);
        var client = new BlobServiceClient(new Uri(settings.AzureEndpoint), credential);
        services.AddSingleton(client);
        return services;
    }
}
