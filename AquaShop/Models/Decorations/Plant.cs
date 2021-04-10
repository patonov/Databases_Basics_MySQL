using System;
using System.Collections.Generic;
using System.Text;
using AquaShop.Models.Decorations.Contracts;
using AquaShop.Models.Decorations;

namespace AquaShop.Models.Decorations
{
    public class Plant : Decoration
    {
        private const int initialComs = 5;
        private const int initialPrice = 10;

        public Plant() : base(initialComs, initialPrice)
        {

        }
    }
}
