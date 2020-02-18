import {request} from './index'

export function getItemDetail(id) {
  return request({
    url: '/goods/item/' + id
  })
}

export function getPayData(sid) {
  return request({
    url: '/detail/pay_data',
    params: {
      sid
    }
  })
}

export class itemInformation {
  constructor (itemDetail) {
    this.shop_img = itemDetail.shop_img;
    this.price = itemDetail.price;
    this.old_price = itemDetail.old_price;
    this.title = itemDetail.title;
    this.welfare = itemDetail.welfare;
  }
}

export class itemEvaluation {
  constructor (itemDetail) {
    this.evaluation = itemDetail.evaluation;
    this.first_fan = itemDetail.first_fan;
    this.first_eval = itemDetail.first_eval;
    this.second_fan = itemDetail.second_fan;
    this.second_eval = itemDetail.second_eval;
  }
}

export class ShopInfo {
  constructor (itemDetail) {
    this.shop_icon = itemDetail.shop_icon;
    this.shop = itemDetail.shop;
    this.commodity = itemDetail.commodity;
    this.count = this.count;
  }
}

export class DescribeInfo {
  constructor (itemDetail,swiperList) {
    this.describe = itemDetail.describe;
    this.swiperList = swiperList;
  }
}

export class BSeller {
  constructor(itemDetail) {
    this.base_seller_img = itemDetail.base_seller_img;
    this.base_seller = itemDetail.base_seller;
    this.base_seller_num = itemDetail.base_seller_num;
  }
}