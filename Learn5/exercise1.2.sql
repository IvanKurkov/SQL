/* ������� users ���� �������� ��������������. 
 * ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� 20.10.2017 8:10.
 *  ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.*/

UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'), updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
ALTER TABLE users MODIFY created_at datetime;
ALTER TABLE users MODIFY updated_at datetime;
