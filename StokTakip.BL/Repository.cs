using StokTakip.DAL;
using StokTakip.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;

namespace StokTakip.BL
{
    public class Repository<T> where T : class, IEntity, new()
    {
        DatabaseContext context;
        DbSet<T> _dbSet;
        public Repository()//Repository class ımızın constructor ı, bu class newlendiğinde içindeki kodlar ilk olarak çalışır
        {
            if (context == null)//eğer yukarda tanımladığımız context nesnesi boşsa
            {
                context = new DatabaseContext();//context i doldur
                _dbSet = context.Set<T>();
            }
        }
        public List<T> GetAll()
        {
           return _dbSet.ToList();
        }
        public T Get(int id)
        {
            return _dbSet.Find(id);
        }
        public int Add(T entity)
        {
            _dbSet.Add(entity);
            return context.SaveChanges();
        }
        public int Update(T entity)
        {
            _dbSet.AddOrUpdate(entity);//parametreden gelen entitiyi veritabanına ekle
            return context.SaveChanges();//ekleme işlemini veritabanına kaydet ve geriye etkilenen kayıt sayısını döndür
        }
        public int Delete(int id)
        {
            _dbSet.Remove(this.Get(id));
            return context.SaveChanges();
        }
    }
}
