using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using AquaShop.Utilities.Messages;
using AquaShop.Models.Aquariums.Contracts;
using AquaShop.Models.Aquariums;
using AquaShop.Models.Decorations;
using AquaShop.Models.Decorations.Contracts;
using AquaShop.Models.Fish;
using AquaShop.Models.Fish.Contracts;
using AquaShop.Repositories.Contracts;


namespace AquaShop.Repositories
{
    public class DecorationRepository : IRepository<IDecoration>
    {
        private readonly Dictionary<string, IDecoration> decors;

        public DecorationRepository()
        {
            this.decors = new Dictionary<string, IDecoration>();
        }
        
        public IReadOnlyCollection<IDecoration> Models => decors;

        public void Add(IDecoration model)
        {
           this.decors.Add(model.GetType(), model);
        }

        public bool Remove(IDecoration model)
        {
            return this.decors.Remove(model.GetType);
        }

        public IDecoration FindByType(string type)
        {
            IDecoration decor = null;

            if (this.decors.ContainsKey(type))
            {
                decor = this.decors[type];
            }

            return decor;
        }
    }
}
