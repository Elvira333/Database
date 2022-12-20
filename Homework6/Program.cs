// Console.Clear();
// // Задача 41: Пользователь вводит с клавиатуры M чисел. Посчитайте, сколько чисел больше 0 ввёл пользователь.
// // 0, 7, 8, -2, -2 -> 2
// // 1, -7, 567, 89, 223-> 3

// Console.WriteLine("Введите количество элементов массива: ");
// int m = int.Parse(Console.ReadLine()!);
// int[] array = new int[m];
// int aboveNumber = 0;
// int[] CreateArr(int[] array)
// {
//     for (int i = 0; i < array.Length; i++)
//     {
//         Console.Write($"Введите элемент массива под индексом {i}: ");
//         array[i] = int.Parse(Console.ReadLine()!);

//     }
//     Console.WriteLine(string.Join(" ", array));
//     return array;
// }
// Console.WriteLine(CreateArr(array));

// for (int i = 0; i < array.Length; i++)
// {

//     if (array[i] > 0)
//     {
//         aboveNumber = aboveNumber + 1;
//     }
// }
// Console.WriteLine($"количество чисел больше 0 которые ввел пользователь составляет: {aboveNumber}");


// Задача 43: Напишите программу, которая найдёт точку пересечения двух прямых, заданных уравнениями 
//y = k1 * x + b1, 
//y = k2 * x + b2; 
//значения b1, k1, b2 и k2 задаются пользователем.
// b1 = 2, k1 = 5, b2 = 4, k2 = 9-> (-0, 5; -0,5)

// Console.WriteLine("введите число b1");
// double b1 = Convert.ToDouble(Console.ReadLine());
// Console.WriteLine("введите число k1");
// double k1 = Convert.ToDouble(Console.ReadLine());
// Console.WriteLine("введите число b2");
// double b2 = Convert.ToDouble(Console.ReadLine());
// Console.WriteLine("введите число k2");
// double k2 = Convert.ToDouble(Console.ReadLine());

// double x = (-b2 + b1) / (-k1 + k2);
// double y = k2 * x + b2;

// Console.WriteLine($"точка пересечения двух прямых будет в точке с координатами X: {x}, Y: {y}");