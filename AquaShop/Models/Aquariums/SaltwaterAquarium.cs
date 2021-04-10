using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using AquaShop.Utilities.Messages;
using AquaShop.Models.Aquariums.Contracts;
using AquaShop.Models.Decorations;
using AquaShop.Models.Fish;

namespace AquaShop.Models.Aquariums
{
    public class SaltwaterAquarium : Aquarium, IAquarium
    {
        public SaltwaterAquarium(string name) : base(name, 25)
        {

        }

    }
}
