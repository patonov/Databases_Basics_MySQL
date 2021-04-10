using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using AquaShop.Utilities.Messages;
using AquaShop.Models.Aquariums.Contracts;
using AquaShop.Models.Decorations;
using AquaShop.Models.Decorations.Contracts;
using AquaShop.Models.Fish;
using AquaShop.Models.Fish.Contracts;

namespace AquaShop.Models.Aquariums
{
    public abstract class Aquarium : IAquarium
    {
        private string name;
        private int capacity;
        private readonly ICollection<IDecoration> decorations;
        private readonly ICollection<IFish> fishes;

        public Aquarium(string name, int capacity)
        {
            this.Name = name;
            this.Capacity = capacity;

            decorations = new ICollection<IDecoration>();
            fishes = new ICollection<IFish>();
        }

        public string Name
        {
            get => this.name;

            private set
            {
                if (string.IsNullOrWhiteSpace(value))
                {
                    throw new ArgumentException(string.Format(ExceptionMessages.InvalidAquariumName));
                }
                this.name = value;
            }
        }

        public int Capacity { get; private set; }

        public ICollection<IDecoration> Decorations => this.decorations;

        public int Comfort
        {
            get
            {
                var sum = 0;

                foreach (Decoration decor in decorations)
                {
                    sum += decor.Comfort;
                }
                return sum;
            }
        }

        public ICollection<IFish> Fish => this.fishes;

        public void AddFish(IFish fish)
        {
            if (this.Capacity < this.Fish.Count)
            {
                throw new InvalidOperationException(string.Format(ExceptionMessages.NotEnoughCapacity));
            }

            this.Fish.Add(fish);
        }

        public bool RemoveFish(IFish fish)
        {
            return this.Fish.Remove(fish);
        }

        public void AddDecoration(IDecoration decoration)
        {
            this.Decorations.Add(decoration);
        }

        public void Feed()
        {
            foreach (Fish fish in this.Fish)
            {
                fish.Eat();
            }
        }

        public string GetInfo()
        {
            if (Fish.Count == 0)
            {
                Console.WriteLine("none");
            }

            return $"{this.Name} ({this.GetType().Name}):\r\n" +
            $"Fish: {string.Join(", ", this.Fish)}\r\n" +
            $"Decorations: {this.Decorations.Count}\r\n" +
            $"Comfort: {this.Comfort}";

           
        }

    }
}
