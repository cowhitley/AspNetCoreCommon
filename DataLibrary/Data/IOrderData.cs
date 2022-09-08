using DataLibrary.Models;
using System.Threading.Tasks;

namespace DataLibrary.Data
{
    public interface IOrderData
    {
        Task<int> CreateOrder(OrderModel order);
        Task<int> DeleteOrder(int Id);
        Task<OrderModel> GetOrderById(int Id);
        Task<int> UpdateOrderName(int Id, string OrderName);
    }
}