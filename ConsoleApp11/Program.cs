using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsoleApp11
{
    class Program
    {
       /* static string connectionString= @"Data Source=(local);Initial Catalog=Schools;Integrated Security=True";//тут замени на другое*/
        static void Main(string[] args)
        {
            string connectionString= @"Data Source=(local);Initial Catalog=Schools;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
          
            SqlCommand command = new SqlCommand("select sc.Number,(select count(SchoolId) from Teacher as t where t.SchoolId=sc.SchoolId and t.Gender='мужской') countOfMen from School as sc",connection);
            SqlDataReader reader = command.ExecuteReader();//общий для всех
            Console.WriteLine("Количество преподавателей мужского пола в каждой из школ");
             if(reader.HasRows)
            {
                Console.WriteLine("{0}\t{1}", reader.GetName(0), reader.GetName(1));
                while(reader.Read())
                {
                    Console.WriteLine("{0}\t{1}",reader.GetValue(0),reader.GetValue(1));
                }
            }
            SqlCommand command1 = new SqlCommand("select sc.Number,(select count(*) from Teacher as t where t.SchoolId=sc.SchoolId and t.Gender='женский')as countOfWomen from School as sc", connection);
            reader.Close();
            reader = command1.ExecuteReader();
            Console.WriteLine("Количество преподавателей женского пола в каждой из школ");
            if (reader.HasRows)
            {
                Console.WriteLine("{0}\t{1}", reader.GetName(0), reader.GetName(1));
                while (reader.Read())
                {
                    Console.WriteLine("{0}\t{1}", reader.GetValue(0), reader.GetValue(1));
                }
            }
            reader.Close();
            SqlCommand command2 = new SqlCommand("select top 1 (select count(*) from Pupil as pup where pup.SchoolId=sc.SchoolId) CountOfPupils,* from School as sc order by CountOfPupils desc", connection);
            reader = command2.ExecuteReader();
            Console.WriteLine("Данные о школе с наибольшим количеством учеников");
            if(reader.HasRows)
            {
                Console.WriteLine("{0}\t{1}\t{2}", reader.GetName(0), reader.GetName(1), reader.GetName(2));
                while(reader.Read())
                {
                    Console.WriteLine("{0}\t{1}\t{2}", reader.GetValue(0), reader.GetValue(1), reader.GetValue(2));
                }
            }
            reader.Close();
            SqlCommand command3 = new SqlCommand("select sc.Number,(select avg(pup.Age) from Pupil as pup where pup.SchoolId=sc.SchoolId and pup.Gender='мужской') as AvgAgeOfBoys from School as sc", connection);
            reader = command3.ExecuteReader();
            Console.WriteLine("Средний возраст мальчиков каждой из школ");
            if(reader.HasRows)
            {
                Console.WriteLine("{0}\t{1}", reader.GetName(0), reader.GetName(1));
                while(reader.Read())
                {
                    Console.WriteLine("{0}\t{1}", reader.GetValue(0), reader.GetValue(1));
                }
            }
            reader.Close();
            SqlCommand command4 = new SqlCommand("select sc.Number,(select avg(pup.Age) from Pupil as pup where pup.SchoolId=sc.SchoolId and pup.Gender='женский') as AvgAgeOfBoys from School as sc", connection);
            reader = command4.ExecuteReader();
            Console.WriteLine("Средний возраст девочек каждой из школ");
            if (reader.HasRows)
            {
                Console.WriteLine("{0}\t{1}", reader.GetName(0), reader.GetName(1));
                while (reader.Read())
                {
                    Console.WriteLine("{0}\t{1}", reader.GetValue(0), reader.GetValue(1));
                }
            }
            reader.Close();
            
    }
}
