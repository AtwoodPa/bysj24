import request from '@/utils/request'

// 查询存储疫苗信息列表
export function listVaccine(query) {
  return request({
    url: '/vaccine/vaccine/list',
    method: 'get',
    params: query
  })
}

// 查询存储疫苗信息详细
export function getVaccine(vaccineId) {
  return request({
    url: '/vaccine/vaccine/' + vaccineId,
    method: 'get'
  })
}

// 新增存储疫苗信息
export function addVaccine(data) {
  return request({
    url: '/vaccine/vaccine',
    method: 'post',
    data: data
  })
}

// 修改存储疫苗信息
export function updateVaccine(data) {
  return request({
    url: '/vaccine/vaccine',
    method: 'put',
    data: data
  })
}

// 删除存储疫苗信息
export function delVaccine(vaccineId) {
  return request({
    url: '/vaccine/vaccine/' + vaccineId,
    method: 'delete'
  })
}
