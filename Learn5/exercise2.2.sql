/* ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
 * ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.*/


SELECT count(*) AS count_in_week, dayname(concat (year(now()), '-', (substring(b_date,6,10)))) AS week_day FROM users GROUP BY week_day;