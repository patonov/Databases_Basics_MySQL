﻿using System;
using System.Collections.Generic;
using System.Text;
using AquaShop.Models.Fish.Contracts;
using AquaShop.Utilities.Messages;

namespace AquaShop.Models.Fish
{
    public class FreshwaterFish : Fish
    {
        private const int initialSize = 3;

        public FreshwaterFish(string name, string species, decimal price) : base(name, species, price)
        {
            this.Size = initialSize;
        }

        
    }
}
