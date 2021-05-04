USE gringotts;

CREATE VIEW rw_pw AS

SELECT w1.first_name AS host_wizard, w1.deposit_amount AS host_wizard_deposit,
	   w2.first_name AS guest_wizard, w2.deposit_amount AS guest_wizard_deposit
FROM wizzard_deposits AS w1, wizzard_deposits AS w2
WHERE w1.id + 1 = w2.id;

SELECT host_wizard_deposit - guest_wizard_deposit AS difference
FROM rw_pw;

SELECT SUM(host_wizard_deposit - guest_wizard_deposit) AS sum_of_diffs
FROM rw_pw;


