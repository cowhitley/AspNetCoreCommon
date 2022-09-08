CREATE PROCEDURE [dbo].[spOrders_GetById]
	@Id int	
AS
BEGIN

	SET NOCOUNT ON;

	SELECT [Id], [OrderName], [OrderDate], [FoodId], [Quantity], [Total]
	FROM dbo.[Orders]
	WHERE Id = @Id;
END