Select [name], 
       [appointment_type],
       [appointment_date],
       [duration_minutes],
       [appointment_location],
       [appointment_cost]
From [dbo].[appointments]
Where [appointment_date] >= '2026-01-01';

Select [name], 
       [species],
       [gender],
       [age],
       [pet_location]
From [dbo].[pets]
Where [age] >= 5;
