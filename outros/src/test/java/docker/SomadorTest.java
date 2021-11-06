package docker;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class SomadorTest {

    @Test
    public void somar() {

        int result = 0;
        try {
            result = Somador.somar(2, 3);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            assertEquals(5, result);
        }

    }

}