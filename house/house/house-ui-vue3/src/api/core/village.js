import request from '@/utils/request'

// 查询小区管理列表
export function listVillage(query) {
  return request({
    url: '/core/village/list',
    method: 'get',
    params: query
  })
}

// 查询小区管理详细
export function getVillage(id) {
  return request({
    url: '/core/village/' + id,
    method: 'get'
  })
}

// 新增小区管理
export function addVillage(data) {
  return request({
    url: '/core/village',
    method: 'post',
    data: data
  })
}

// 修改小区管理
export function updateVillage(data) {
  return request({
    url: '/core/village',
    method: 'put',
    data: data
  })
}

// 删除小区管理
export function delVillage(id) {
  return request({
    url: '/core/village/' + id,
    method: 'delete'
  })
}
