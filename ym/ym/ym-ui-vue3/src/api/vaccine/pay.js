import request from '@/utils/request'

// 查询支付功能列表
export function listPay(query) {
  return request({
    url: '/vaccine/pay/list',
    method: 'get',
    params: query
  })
}

// 查询支付功能详细
export function getPay(id) {
  return request({
    url: '/vaccine/pay/' + id,
    method: 'get'
  })
}

// 新增支付功能
export function addPay(data) {
  return request({
    url: '/vaccine/pay',
    method: 'post',
    data: data
  })
}

// 修改支付功能
export function updatePay(data) {
  return request({
    url: '/vaccine/pay',
    method: 'put',
    data: data
  })
}

// 删除支付功能
export function delPay(id) {
  return request({
    url: '/vaccine/pay/' + id,
    method: 'delete'
  })
}
