import request from '@/utils/request'

// 查询疫苗类型列表
export function listVaccineType(query) {
  return request({
    url: '/vaccine/vaccineType/list',
    method: 'get',
    params: query
  })
}

// 查询疫苗类型详细
export function getVaccineType(typeId) {
  return request({
    url: '/vaccine/vaccineType/' + typeId,
    method: 'get'
  })
}

// 新增疫苗类型
export function addVaccineType(data) {
  return request({
    url: '/vaccine/vaccineType',
    method: 'post',
    data: data
  })
}

// 修改疫苗类型
export function updateVaccineType(data) {
  return request({
    url: '/vaccine/vaccineType',
    method: 'put',
    data: data
  })
}

// 删除疫苗类型
export function delVaccineType(typeId) {
  return request({
    url: '/vaccine/vaccineType/' + typeId,
    method: 'delete'
  })
}
