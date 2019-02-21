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
            using (FIFAdbEntities fIFAdb=new  FIFAdbEntities())
            {
                Footballist footballist = new Footballist()
                {
                    FormColor = "Read",
                    Nickname = "Ronaldo",
                };
                fIFAdb.Footballists.Add(footballist);
                Game game = new Game()
                {
                    Location = "Brazil",
                };
                Trainer trainer = new Trainer()
                {
                    Nickname = "Balu",
                    Age = "45"
                };
                Referee referee = new Referee()
                {
                    Experiance = "10",
                    FirstName = "Andru",
                    Isfair = "Yes"
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
             
                fIFAdb.SaveChanges();

         



            }
        }
    }
}
