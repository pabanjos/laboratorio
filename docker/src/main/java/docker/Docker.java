package docker;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.Duration;
import java.util.concurrent.TimeUnit;

public class Docker {

    public static void main(String[] args) {

        HttpClient client = HttpClient.newHttpClient();
        HttpRequest request = HttpRequest.newBuilder(URI.create("http://host.docker.internal/bd.json"))//
            .GET().timeout(Duration.ofSeconds(3L)).build();

        boolean continuar = true;
        do {
            try {
                TimeUnit.SECONDS.sleep(1);
                System.out.println("tentando conectar..");
                String resposta = client.send(request, HttpResponse.BodyHandlers.ofString()).body();
                System.out.println(resposta);
                continuar = false;
            } catch (Exception e) {
                System.err.println(e.getMessage());
            }
        } while (continuar);

    }
}
