using System;

namespace MyCompany.Models
{
    public class Introduction
    {

        public string Content { get; private set; }

        public Introduction(string name) {
            this.Content = $"Hello, {name}!";
        }
    }
}
