import request from '@/utils/request'

// 查询疫苗厂家列表
export function listManufacturer(query) {
  return request({
    url: '/vaccine/manufacturer/list',
    method: 'get',
    params: query
  })
}

// 查询疫苗厂家详细
export function getManufacturer(manufacturerId) {
  return request({
    url: '/vaccine/manufacturer/' + manufacturerId,
    method: 'get'
  })
}

// 新增疫苗厂家
export function addManufacturer(data) {
  return request({
    url: '/vaccine/manufacturer',
    method: 'post',
    data: data
  })
}

// 修改疫苗厂家
export function updateManufacturer(data) {
  return request({
    url: '/vaccine/manufacturer',
    method: 'put',
    data: data
  })
}

// 删除疫苗厂家
export function delManufacturer(manufacturerId) {
  return request({
    url: '/vaccine/manufacturer/' + manufacturerId,
    method: 'delete'
  })
}
