CREATE PROCEDURE [dbo].[spOrders_Insert]
	@OrderName NVARCHAR(50),
	@OrderDate DATETIME2(7),
	@FoodId	INT,
	@Quantity INT,
	@Total MONEY,
	@Id int output
AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO dbo.[Orders] (OrderName, OrderDate, FoodId, Quantity, Total)
	VALUES (@OrderName, @OrderDate, @FoodId, @Quantity, @Total);

	SET @Id = SCOPE_IDENTITY();

END