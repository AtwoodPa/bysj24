import request from '@/utils/request'

// 查询疫苗出入库列表
export function listVaccineStock(query) {
  return request({
    url: '/vaccine/vaccineStock/list',
    method: 'get',
    params: query
  })
}

// 查询疫苗出入库详细
export function getVaccineStock(siteId) {
  return request({
    url: '/vaccine/vaccineStock/' + siteId,
    method: 'get'
  })
}

// 新增疫苗出入库
export function addVaccineStock(data) {
  return request({
    url: '/vaccine/vaccineStock',
    method: 'post',
    data: data
  })
}

// 修改疫苗出入库
export function updateVaccineStock(data) {
  return request({
    url: '/vaccine/vaccineStock',
    method: 'put',
    data: data
  })
}

// 删除疫苗出入库
export function delVaccineStock(siteId) {
  return request({
    url: '/vaccine/vaccineStock/' + siteId,
    method: 'delete'
  })
}
