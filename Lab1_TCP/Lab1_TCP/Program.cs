using System.Net.Sockets;
using System.Net;
using System.Text;

namespace Lab1_TCP
{
    internal class Program
    {
        static void Main(string[] args)
        {
            const int port = 8080;
            TcpListener server = null;

            try
            {
                server = new TcpListener(IPAddress.Any, port);
                server.Start();

                Console.WriteLine($"Server is listening on port {port}...");

                while (true)
                {
                    Console.WriteLine("Waiting for a connection...");
                    TcpClient client = server.AcceptTcpClient();
                    Console.WriteLine("Client connected.");

                    NetworkStream stream = client.GetStream();

                    byte[] buffer = new byte[1024];
                    int bytesRead = stream.Read(buffer, 0, buffer.Length);
                    string receivedData = Encoding.UTF8.GetString(buffer, 0, bytesRead);

                    Console.WriteLine($"Received: {receivedData}");

                    string responseData = receivedData.ToUpper();
                    byte[] responseBytes = Encoding.UTF8.GetBytes(responseData);

                    stream.Write(responseBytes, 0, responseBytes.Length);
                    Console.WriteLine($"Sent: {responseData}");

                    client.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine($"Error: {e.Message}");
            }
            finally
            {
                server?.Stop();
            }
        }
    }
}
