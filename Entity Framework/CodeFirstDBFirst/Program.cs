using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirstDBFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            using (Model1Container1 fIFAdb =new Model1Container1())
            {
                Footballist footballist = new Footballist()
                {
                    FormColor = "Blue",
                    Nickname = "Zidan",
                    Experiance="53"
                    
                };
                fIFAdb.Footballists.Add(footballist);
                Game game = new Game()
                {
                    Location = "Argentina",
                };
                Trainer trainer = new Trainer()
                {
                    Nickname = "Xose",
                    Age = "43"
                };
                Referee referee = new Referee()
                {
                    Experiance = "15",
                    FirstName = "Jone",
                    Isfair = "NO"
                };
                fIFAdb.Referees.Add(referee);
                fIFAdb.Games.Add(game);
                fIFAdb.Trainers.Add(trainer);
                fIFAdb.Footballists.Add(footballist);

                referee.Games.Add(game);
                trainer.Footballists.Add(footballist);
                game.Footballists.Add(footballist);
                game.Referees.Add(referee);
                footballist.Trainers.Add(trainer);
                try
                {

                     fIFAdb.SaveChanges();
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException e)
                {

                    Console.WriteLine(e.Message); 
                }
               

         



            }
        }
    }
}
