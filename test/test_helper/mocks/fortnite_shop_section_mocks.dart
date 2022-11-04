import 'package:fortnite_app/src/features/features.dart';

const mockFortniteShopSectionStringJson =
    '{"entries":[{"regularPrice":5900,"finalPrice":3000,"items":[{"name":"Cuddle Team Leader","description":"Hug it out.","type":"Outfit","rarity":"Legendary","images":{"smallIcon":"https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/smallicon.png","icon":"https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/icon.png","featured":"https://fortnite-api.com/images/cosmetics/br/cid_069_athena_commando_f_pinkbear/featured.png"},"added":"2019-11-20T12:50:28Z","introduction":"Introduced in Chapter 1, Season 2.","set":"Part of the Royale Hearts set."}],"bundleName":"CUDDLE TEAM BUNDLE","bundleInfo":"7 Item Bundle","bundleImage":"https://fortnite-api.com/images/cosmetics/br/materialinstances/mi_bundle_featured_pinkbear/offerimage.png"}],"name":"FEATURED"}';

const mockFortniteShopSectionJson = {
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
};

const mockFortniteShopSectionModel = ShopSection(
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
);
