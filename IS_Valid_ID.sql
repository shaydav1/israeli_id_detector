CREATE FUNCTION dbo.IS_Valid_ID (@ID nvarchar(50))

RETURNS int

BEGIN

             

 

    --====Declaring Parameters======--

       DECLARE @Check_ID nvarchar(50);

 

       DECLARE @1 nvarchar(50)--1st number

       DECLARE @2 nvarchar(50)--2nd number

       DECLARE @3 nvarchar(50)--3rd number

       DECLARE @4 nvarchar(50)--4th number

       DECLARE @5 nvarchar(50)--5th number

       DECLARE @6 nvarchar(50)--6th number

       DECLARE @7 nvarchar(50)--7th number

       DECLARE @8 nvarchar(50)--8th number

       DECLARE @9 nvarchar(50)--9th number

 

       DECLARE @1_Summed int--1st number summed

       DECLARE @2_Summed int--2nd number summed

       DECLARE @3_Summed int--3rd number summed

       DECLARE @4_Summed int--4th number summed

       DECLARE @5_Summed int--5th number summed

       DECLARE @6_Summed int--6th number summed

       DECLARE @7_Summed int--7th number summed

       DECLARE @8_Summed int--8th number summed

       DECLARE @9_Summed int--9th number summed

 

       DECLARE @Is_Valid_ID int

 

       SET @ID = CAST(@ID AS nvarchar(50))

       --=====================Len ID equal 9 characters=========================--

       IF LEN(@ID)=9 and @ID NOT LIKE '%[?-?]%'

       BEGIN

 

              --Isolating each character and multiply it according to the weight method

        SET @1 = CAST(SUBSTRING(@ID, 1, 1) * 1 AS nvarchar(50))

              SET @2 = CAST(SUBSTRING(@ID, 2, 1) * 2 AS nvarchar(50))

              SET @3 = CAST(SUBSTRING(@ID, 3, 1) * 1 AS nvarchar(50))

              SET @4 = CAST(SUBSTRING(@ID, 4, 1) * 2 AS nvarchar(50))

              SET @5 = CAST(SUBSTRING(@ID, 5, 1) * 1 AS nvarchar(50))

              SET @6 = CAST(SUBSTRING(@ID, 6, 1) * 2 AS nvarchar(50))

              SET @7 = CAST(SUBSTRING(@ID, 7, 1) * 1 AS nvarchar(50))

              SET @8 = CAST(SUBSTRING(@ID, 8, 1) * 2 AS nvarchar(50))

              SET @9 = CAST(SUBSTRING(@ID, 9, 1) * 1 AS nvarchar(50))

 

              --Summing numbers

              SET @1_Summed = CAST(SUBSTRING(@1, 1, 1) AS int) + CAST(SUBSTRING(@1, 2, 1) AS int)

              SET @2_Summed = CAST(SUBSTRING(@2, 1, 1) AS int) + CAST(SUBSTRING(@2, 2, 1) AS int)

              SET @3_Summed = CAST(SUBSTRING(@3, 1, 1) AS int) + CAST(SUBSTRING(@3, 2, 1) AS int)

              SET @4_Summed = CAST(SUBSTRING(@4, 1, 1) AS int) + CAST(SUBSTRING(@4, 2, 1) AS int)

              SET @5_Summed = CAST(SUBSTRING(@5, 1, 1) AS int) + CAST(SUBSTRING(@5, 2, 1) AS int)

              SET @6_Summed = CAST(SUBSTRING(@6, 1, 1) AS int) + CAST(SUBSTRING(@6, 2, 1) AS int)

              SET @7_Summed = CAST(SUBSTRING(@7, 1, 1) AS int) + CAST(SUBSTRING(@7, 2, 1) AS int)

              SET @8_Summed = CAST(SUBSTRING(@8, 1, 1) AS int) + CAST(SUBSTRING(@8, 2, 1) AS int)

              SET @9_Summed = CAST(SUBSTRING(@9, 1, 1) AS int) + CAST(SUBSTRING(@9, 2, 1) AS int)

 

              --Summing all to check if valid

              SET @Is_Valid_ID = IIF((@1_Summed+@2_Summed+@3_Summed+@4_Summed+@5_Summed+@6_Summed+@7_Summed+@8_Summed+@9_Summed)%10=0, 1, 0);

       END;

 

    --=====================Len ID equal 9 or greater then 9=========================--

       ELSE

       BEGIN

              IF LEN(@ID)<9--Len ID less then 9

              BEGIN

 

                     SET @ID = REPLICATE('0', 9-LEN(@ID))+@ID--Completeing to 9 characters

 

                     --Isolating each character and multiply it according to the weight method

            SET @1 = CAST(SUBSTRING(@ID, 1, 1) * 1 AS nvarchar(50))

                  SET @2 = CAST(SUBSTRING(@ID, 2, 1) * 2 AS nvarchar(50))

                  SET @3 = CAST(SUBSTRING(@ID, 3, 1) * 1 AS nvarchar(50))

                  SET @4 = CAST(SUBSTRING(@ID, 4, 1) * 2 AS nvarchar(50))

                  SET @5 = CAST(SUBSTRING(@ID, 5, 1) * 1 AS nvarchar(50))

                  SET @6 = CAST(SUBSTRING(@ID, 6, 1) * 2 AS nvarchar(50))

                  SET @7 = CAST(SUBSTRING(@ID, 7, 1) * 1 AS nvarchar(50))

                  SET @8 = CAST(SUBSTRING(@ID, 8, 1) * 2 AS nvarchar(50))

                  SET @9 = CAST(SUBSTRING(@ID, 9, 1) * 1 AS nvarchar(50))

                 

                  --Summing numbers

                  SET @1_Summed = CAST(SUBSTRING(@1, 1, 1) AS int) + CAST(SUBSTRING(@1, 2, 1) AS int)

                  SET @2_Summed = CAST(SUBSTRING(@2, 1, 1) AS int) + CAST(SUBSTRING(@2, 2, 1) AS int)

                  SET @3_Summed = CAST(SUBSTRING(@3, 1, 1) AS int) + CAST(SUBSTRING(@3, 2, 1) AS int)

                  SET @4_Summed = CAST(SUBSTRING(@4, 1, 1) AS int) + CAST(SUBSTRING(@4, 2, 1) AS int)

                  SET @5_Summed = CAST(SUBSTRING(@5, 1, 1) AS int) + CAST(SUBSTRING(@5, 2, 1) AS int)

                  SET @6_Summed = CAST(SUBSTRING(@6, 1, 1) AS int) + CAST(SUBSTRING(@6, 2, 1) AS int)

                  SET @7_Summed = CAST(SUBSTRING(@7, 1, 1) AS int) + CAST(SUBSTRING(@7, 2, 1) AS int)

                  SET @8_Summed = CAST(SUBSTRING(@8, 1, 1) AS int) + CAST(SUBSTRING(@8, 2, 1) AS int)

                  SET @9_Summed = CAST(SUBSTRING(@9, 1, 1) AS int) + CAST(SUBSTRING(@9, 2, 1) AS int)

 

                     --Summing all to check if valid

                     SET @Is_Valid_ID = IIF((@1_Summed+@2_Summed+@3_Summed+@4_Summed+@5_Summed+@6_Summed+@7_Summed+@8_Summed+@9_Summed)%10=0, 1, 0);

              END;

                    

              ELSE

              BEGIN

                  --IF LEN(@ID)>9--Len ID greater then 9

                     SET @Is_Valid_ID = 0

              END;

       END;

      

    RETURN(@Is_Valid_ID);

END;