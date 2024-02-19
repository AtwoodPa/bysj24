import request from '@/utils/request'

// 查询订单管理列表
export function listOrders(query) {
  return request({
    url: '/vaccine/orders/list',
    method: 'get',
    params: query
  })
}

// 查询订单管理详细
export function getOrders(id) {
  return request({
    url: '/vaccine/orders/' + id,
    method: 'get'
  })
}

// 新增订单管理
export function addOrders(data) {
  return request({
    url: '/vaccine/orders',
    method: 'post',
    data: data
  })
}

// 修改订单管理
export function updateOrders(data) {
  return request({
    url: '/vaccine/orders',
    method: 'put',
    data: data
  })
}

// 删除订单管理
export function delOrders(id) {
  return request({
    url: '/vaccine/orders/' + id,
    method: 'delete'
  })
}
