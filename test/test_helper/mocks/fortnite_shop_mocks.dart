import 'package:fortnite_app/src/features/features.dart';

const mockFortniteShopStringJson =
    '{"featured":{"entries":[{"regularPrice":5900,"finalPrice":3000,"items":[{"name":"Cuddle Team Leader","description":"Hug it out.","type":"Outfit","rarity":"Legendary","images":{"smallIcon":"https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/smallicon.png","icon":"https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/icon.png","featured":"https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/featured.png"},"added":"2019-11-20T12:50:28Z","introduction":"Introduced in Chapter 1, Season 2.","set":"Part of the Royale Hearts set."}],"bundleName":"CUDDLE TEAM BUNDLE","bundleInfo":"7 Item Bundle","bundleImage":"https://fortnite-api.com/images/cosmetics/br/materialinstances/mi_bundle_featured_pinkbear/offerimage.png"}],"name":"FEATURED"},"daily":{"entries":[{"regularPrice":1200,"finalPrice":1200,"items":[{"name":"Fennix","description":"Never outfoxed.","type":"Outfit","rarity":"Rare","images":{"smallIcon":"https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/smallicon.png","icon":"https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/icon.png","featured":"https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/featured.png"},"added":"2019-11-20T12:49:52Z","introduction":"Introduced in Chapter 1, Season X.","set":"Part of the Fur Force set."}],"bundleName":null,"bundleInfo":null,"bundleImage":null}],"name":"DAILY"},"specialFeatured":{"entries":[{"regularPrice":1200,"finalPrice":1200,"items":[{"name":"X-34 Landspeeder","description":"Ever since the XP-38 came out, they just aren\'t in demand.","type":"Glider","rarity":"Star Wars Series","images":{"smallIcon":"https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/smallicon.png","icon":"https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/icon.png","featured":"https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/featured.png"},"added":"2022-11-01T08:00:00Z","introduction":"Introduced in Chapter 3, Season 4.","set":"Part of the Original Trilogy set."}],"bundleName":null,"bundleInfo":null,"bundleImage":null}],"name":null}}';

const mockFortniteShopJson = {
  "featured": {
    "entries": [
      {
        "regularPrice": 5900,
        "finalPrice": 3000,
        "items": [
          {
            "name": "Cuddle Team Leader",
            "description": "Hug it out.",
            "type": "Outfit",
            "rarity": "Legendary",
            "images": {
              "smallIcon":
                  "https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/smallicon.png",
              "icon":
                  "https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/icon.png",
              "featured":
                  "https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/featured.png"
            },
            "added": "2019-11-20T12:50:28Z",
            "introduction": "Introduced in Chapter 1, Season 2.",
            "set": "Part of the Royale Hearts set.",
          },
        ],
        "bundleName": "CUDDLE TEAM BUNDLE",
        "bundleInfo": "7 Item Bundle",
        "bundleImage":
            "https://fortnite-api.com/images/cosmetics/br/materialinstances/mi_bundle_featured_pinkbear/offerimage.png"
      },
    ],
    "name": "FEATURED"
  },
  "daily": {
    "entries": [
      {
        "regularPrice": 1200,
        "finalPrice": 1200,
        "items": [
          {
            "name": "Fennix",
            "description": "Never outfoxed.",
            "type": "Outfit",
            "rarity": "Rare",
            "images": {
              "smallIcon":
                  "https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/smallicon.png",
              "icon":
                  "https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/icon.png",
              "featured":
                  "https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/featured.png"
            },
            "added": "2019-11-20T12:49:52Z",
            "introduction": "Introduced in Chapter 1, Season X.",
            "set": "Part of the Fur Force set.",
          },
        ],
        "bundleName": null,
        "bundleInfo": null,
        "bundleImage": null
      },
    ],
    "name": "DAILY"
  },
  "specialFeatured": {
    "entries": [
      {
        "regularPrice": 1200,
        "finalPrice": 1200,
        "items": [
          {
            "name": "X-34 Landspeeder",
            "description":
                "Ever since the XP-38 came out, they just aren't in demand.",
            "type": "Glider",
            "rarity": "Star Wars Series",
            "images": {
              "smallIcon":
                  "https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/smallicon.png",
              "icon":
                  "https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/icon.png",
              "featured":
                  "https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/featured.png"
            },
            "added": "2022-11-01T08:00:00Z",
            "introduction": "Introduced in Chapter 3, Season 4.",
            "set": "Part of the Original Trilogy set.",
          }
        ],
        "bundleName": null,
        "bundleInfo": null,
        "bundleImage": null
      },
    ],
    "name": null
  }
};

const mockFortniteShopModel = FortniteShop(
  featured: ShopSection(
    name: "FEATURED",
    entries: [
      Entry(
        regularPrice: 5900,
        finalPrice: 3000,
        items: [
          Item(
            name: "Cuddle Team Leader",
            description: "Hug it out.",
            type: "Outfit",
            rarity: "Legendary",
            images: Images(
              smallIcon:
                  "https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/smallicon.png",
              icon:
                  "https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/icon.png",
              featured:
                  "https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/featured.png",
            ),
            added: "2019-11-20T12:50:28Z",
            introduction: "Introduced in Chapter 1, Season 2.",
            set: "Part of the Royale Hearts set.",
          ),
        ],
        bundleName: "CUDDLE TEAM BUNDLE",
        bundleInfo: "7 Item Bundle",
        bundleImage:
            "https://fortnite-api.com/images/cosmetics/br/materialinstances/mi_bundle_featured_pinkbear/offerimage.png",
      ),
    ],
  ),
  daily: ShopSection(
    name: "DAILY",
    entries: [
      Entry(
        regularPrice: 1200,
        finalPrice: 1200,
        items: [
          Item(
            name: "Fennix",
            description: "Never outfoxed.",
            type: "Outfit",
            rarity: "Rare",
            images: Images(
              smallIcon:
                  "https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/smallicon.png",
              icon:
                  "https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/icon.png",
              featured:
                  "https://fortnite-api.com/images/cosmetics/br/cid_504_athena_commando_m_lopex/featured.png",
            ),
            added: "2019-11-20T12:49:52Z",
            introduction: "Introduced in Chapter 1, Season X.",
            set: "Part of the Fur Force set.",
          ),
        ],
        bundleName: null,
        bundleInfo: null,
        bundleImage: null,
      ),
    ],
  ),
  specialFeatured: ShopSection(
    name: null,
    entries: [
      Entry(
        regularPrice: 1200,
        finalPrice: 1200,
        items: [
          Item(
            name: "X-34 Landspeeder",
            description:
                "Ever since the XP-38 came out, they just aren't in demand.",
            type: "Glider",
            rarity: "Star Wars Series",
            images: Images(
              smallIcon:
                  "https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/smallicon.png",
              icon:
                  "https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/icon.png",
              featured:
                  "https://fortnite-api.com/images/cosmetics/br/glider_distantechopro/featured.png",
            ),
            added: "2022-11-01T08:00:00Z",
            introduction: "Introduced in Chapter 3, Season 4.",
            set: "Part of the Original Trilogy set.",
          ),
        ],
        bundleName: null,
        bundleInfo: null,
        bundleImage: null,
      ),
    ],
  ),
);
