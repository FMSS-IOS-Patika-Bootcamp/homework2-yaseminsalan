//
//  ViewController.swift
//  homework2

//

import UIKit

class ViewController: UIViewController {
    
    //News information was kept in a list.
  private var newsList:[NewsModel] = [NewsModel(title: "Aman Aman", description: "Türkiye'de nesli tükenme tehlikesi altında olan su samuru, kameraya yakalandı. Sabahın erken saatlerinde limandaki kayıkların üzerine çıkan su samuru çevredekilerin şaşkın bakışları arasında kayıkların üzerinde gezindi. Yiyecek aradığı tahmin edilen su samuru daha sonra denize atlayıp gözden kayboldu.", publishingDate: Date.now, newsDate: Date.now, image: "otter",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Sırtını Yaslamak", description: "Söz konusu fotoğrafta annesi, leopar tarafından son anda avlanmaktan kurtulan yavru maymunun son bir çare ile annesine sımsıkı sarılması yer alıyor. Güney Luangwa Ulusal Parkı'nda çekilen görüntüde yavru maymunun annesini bırakmaması takdir topladı.Annesi ile birlikte kurtulan maymun sonrasında keyif pozu verdi.", publishingDate: Date.now, newsDate: Date.now, image: "blackMonkey",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Sincap dileği", description: "", publishingDate: Date.now, newsDate: Date.now, image: "squirrel",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Aile Kavgası", description: "Bir evin balkonunda asılı olan yem dolu kabın üzerine gelen serçeler doyasıya yemek yedi. Görüntülerin devamında ise tesadüfi bir şekilde serçelerin yediği yemeklerin bir kısmı aşağıya döküldü. Yemlerin dökülmesi dökülmesi sonucu ortaya çıkan görüntü herkezin yüzünde tebessüm oluşturdu. ", publishingDate: Date.now, newsDate: Date.now, image: "bird",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Uzay Adamı", description: "", publishingDate: Date.now, newsDate: Date.now, image: "monkeys",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Göğüs Darbesi", description: "Tek eşli yaşam sürdükleri bilinen penguenler arasında yaşanan olay belgeselcileri hayret düşürdü. Eşini başka erkekle basan penguen çıldırdı ve kavgaya tutuştu.", publishingDate: Date.now, newsDate: Date.now, image: "seal",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Güney Atlantik Tarzı Sörf", description: "Rockhopper türü penguen Cody Maverick ilk profesyonel yarışmasına katılacak, yeni ve yükselmekte olan bir sörfçüdür. Bu deneyimini belgelemek için peşinden ayrılmayan bir kamera ekibiyle birlikte, 'Büyük Z Surf Yarışması'na katılmak üzere, ailesinden ve Antarktika Buztanbul şehrindeki evinden Pen Gu Adası'na doğru yola çıkar.", publishingDate: Date.now, newsDate: Date.now, image: "penguin",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Ceviz isteyen var mı?", description: "çiçekçi dükkanı işleten bir vatandaşa, 5 ay önce kestiği bir ağacın kovuğunda yavru bir sincap buldu. Arkadaşının getirdiği sincabı çok seven vatandaş, onu bir süre biberonla süt vererek besledi. Biraz büyümesinin ardından doğaya bıraktığı sincabın geri gelmesi üzerine, ‘Mamut’ adını verdiği hayvanı beslemeye devam etti.", publishingDate: Date.now, newsDate: Date.now, image: "squirrelAndTree",newsLink: "https://www.google.com/?client=safari"),NewsModel(title: "Olmak ya da olmamak", description: "Görüntüler Uzakdoğudan; bir maymun çete liderli olarak kamera karşısınageçiyor. Sevimli maymun cool tavırlarıyla rolünün hakkını sonuna kadarveriyor.", publishingDate: Date.now, newsDate: Date.now, image: "monkey",newsLink: "https://www.google.com/?client=safari")]
    
    //Instance is created
    private var collectionHelper:NewsCollectionViewManager!
    @IBOutlet weak var newsCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //collectionHelper does all collectionView operations, so we have divided the operations into a helper class.
        
        collectionHelper = .init(collectionView: newsCollectionView, vc: self)
        collectionHelper.set(items: newsList)
        
        navigationController?.navigationBar.topItem!.title = "HABERLER"
        
        // Do any additional setup after loading the view.
    }


}
