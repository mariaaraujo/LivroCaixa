using System;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using LivroCaixa2023.Tabelas;

namespace LivroCaixa2023.Classes
{ 
    [Serializable]
    public class Serializa
    {
        public static void save(List<Usuario> lista)
        {
            try
            {
                FileStream fs = new FileStream("C:\\Users\\maria\\Documentos\\IISExpress\\caixa.dat",
                    FileMode.Create);
                BinaryFormatter serializer = new BinaryFormatter();
                serializer.Serialize(fs, lista);
                fs.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }
        public static List<Usuario> load()
        {
            try
            {
                if (!File.Exists("C:\\Users\\maria\\Documentos\\IISExpress\\caixa.dat")) return null;

                FileStream fs = new FileStream("C:\\Users\\maria\\Documentos\\IISExpress\\caixa.dat", FileMode.Open);
                BinaryFormatter formatter = new BinaryFormatter();
                List<Usuario> lista = (List<Usuario>)formatter.Deserialize(fs);
                fs.Close();
                return lista;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }

}