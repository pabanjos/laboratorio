package teste;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.*;

public class Principal {

    private static final ScheduledExecutorService executor = Executors.newScheduledThreadPool(8);
    private static final Runnable run = () -> System.out.println(Thread.currentThread().getName());

    private static String call() {
        try {
            TimeUnit.SECONDS.sleep(1);
        } catch (final InterruptedException e) {
            e.printStackTrace();
        }
        return Thread.currentThread().getName();
    }

    public static void main(final String[] args) {
//      System.out.println("Núcleos: " + ForkJoinPool.getCommonPoolParallelism());
        testarConcorrencia();
//      testarMapa();
//      testarMemoria();
    }

    private static void testarConcorrencia() {
        long inicio = System.currentTimeMillis();
        final Callable<String> t0 = Principal::call;
        final Callable<String> t1 = Principal::call;
        final Callable<String> t2 = Principal::call;
        final Callable<String> t3 = Principal::call;
        final Callable<String> t4 = Principal::call;
        final Callable<String> t5 = Principal::call;
        final Callable<String> t6 = Principal::call;
        final Callable<String> t7 = Principal::call;
        final Callable<String> t8 = Principal::call;
        final Callable<String> t9 = Principal::call;
        final Callable<String> t10 = Principal::call;
        final Callable<String> t11 = Principal::call;
        final Callable<String> t12 = Principal::call;
        final Callable<String> t13 = Principal::call;
        final Callable<String> t14 = Principal::call;
        final Callable<String> t15 = Principal::call;
        final Callable<String> t16 = Principal::call;
        final List<Callable<String>> list = Arrays.asList(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16);
        try {
            final List<Future<String>> lista = executor.invokeAll(list);
            lista.forEach(item -> {
                try {
                    System.out.println(item.get());
                } catch (final InterruptedException | ExecutionException e) {
                    e.printStackTrace();
                }
            });
        } catch (final InterruptedException e) {
            e.printStackTrace();
        }
        executor.shutdown();
        long fim = System.currentTimeMillis();
        System.out.println((fim - inicio) / 1000.0);
    }

    private static void testarMapa() {
        long inicio = System.currentTimeMillis();
        final ConcurrentHashMap<String, String> map = new ConcurrentHashMap<>();
        map.put("0", "0");
        map.put("1", "1");
        map.put("2", "2");
        map.put("3", "3");
        map.put("4", "4");
        map.put("5", "5");
        map.put("6", "6");
        map.put("7", "7");
        map.put("8", "8");
        map.put("9", "9");
        map.put("11", "11");
        map.put("22", "22");
        map.put("33", "33");
        map.put("44", "44");
        map.put("55", "55");
        map.put("66", "66");
        final Runnable r1 = () -> map.forEach(1, (key, value) -> System.out.printf("key: %s; value: %s; thread: %s\n", //
                key, value, call()));
        final Future<?> valor = executor.submit(r1);
        try {
            System.out.println(valor.get());
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
        }
        executor.shutdown();
        long fim = System.currentTimeMillis();
        System.out.println((fim - inicio) / 1000.0);
    }

    private static void testarMemoria() {
        long inicio = System.currentTimeMillis();
        List<Teste> lista = new ArrayList<>();
        int cont = 0;
        try {
            for (int i = 0; i < 1000000; i++) {
                lista.add(new Teste(i));
                cont = i;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(cont);
        long fim = System.currentTimeMillis();
        System.out.println((fim - inicio) / 1000.0);
    }
}
