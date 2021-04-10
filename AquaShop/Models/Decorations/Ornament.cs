using System;
using System.Collections.Generic;
using System.Text;
using AquaShop.Models.Decorations.Contracts;
using AquaShop.Models.Decorations;

namespace AquaShop.Models.Decorations
{
    public class Ornament : Decoration
    {
        private const int initialComs = 1;
        private const int initialPrice = 5;

        public Ornament() : base(initialComs, initialPrice)
        {

        }
    }
}
