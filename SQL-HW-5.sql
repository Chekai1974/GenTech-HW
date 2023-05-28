---Добавить три пожертвования
Insert into donations (donation_id, created_at, donator_id, amount, stream_id)
	value (1, CURRENT_TIMESTAMP, 1, 1200, 3),
    	  (2, CURRENT_TIMESTAMP, 2, 1200, 1),
          (3, CURRENT_TIMESTAMP, 4, 1000, 2)


-- Вывести сумму всех пожертвований
SELECT SUM(amount) AS suma_of_all_donation
FROM donations

-- Вывести информацию о пожертвованиях (имядоната, странадонатара, сумма)
SELECT users.fullname,
	   users.country,
       donations.amount
From users
Join donations on users.user_id=donations.donator_id
    

-- Вывести ТОП-1 донаторов по сумме всех донатов (имядонатара, суммавсех_донатов)
SELECT users.fullname,
	   user_id,
	   SUM(donations.amount) AS sum_amount
From users
JOIN donations On users.user_id=donations.donator_id
GROUP BY donator_id
ORDER By sum_amount DESC
Limit 1



--Вывести информацию о получателях донатов (имяпользователя, суммаполученных_донатов)
SELECT 
	fullname,
	SUM(donations.amount) AS сумма_пожертвований
FROM users
JOIN streams ON users.user_id=streams.author_id
JOIN donations On streams.stream_id=donations.stream_id
group By users.fullname;