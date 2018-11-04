package java;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Datas {

	public static void main(final String[] args) {
		final DateTimeFormatter formatTime = DateTimeFormatter.ofPattern("HH:mm");
		final String time = LocalTime.now().format(formatTime);
		System.out.println(time);

		final DateTimeFormatter formatDate = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		final String date = LocalDate.now().format(formatDate);
		System.out.println(date);

		final DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("HH:mm - dd/MM/yyyy");
		final String dateTime = LocalDateTime.now().format(formatDateTime);
		System.out.println(dateTime);

		final LocalDate nasciento = LocalDate.parse("1993-04-06");
		final String nascientoFormatado = nasciento.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
		System.out.println(nascientoFormatado);
	}
}
