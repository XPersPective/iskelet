
## Projeye Dahil Etme
 - Bu paket import edilmez.
 - İki şekilde kullanılabilir.
    1. Peketi olduğu gibi projeye kopyalayarak.
    2. Yada
        - Yeni bir dart paketi oluşturup
        - Tüm src yi ve SrDatabase sınıfını bu pakete kopyalayarak kullanılabilir.
 - 


## Kullanımı

 - ICoreDatabase e ihtiyaç duyulan metodlar eklenir(abstract).
 - İhtiyaç duyulan databaseler (ILocal, IRemote,SrDatabaseReal,SrDatabaseMock)a ugulanır.
 - SrDatabase i uygulamanın başında SrDatabase.appInit(ISrDatabase database) çaşrılır.
 - Uygulanaın her yerinden SrDatabase.instance ile erişilir.