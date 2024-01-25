import request from '@/utils/request'

// 查询接种记录列表
export function listVaccinationRecord(query) {
  return request({
    url: '/vaccine/vaccinationRecord/list',
    method: 'get',
    params: query
  })
}

// 查询接种记录详细
export function getVaccinationRecord(recordId) {
  return request({
    url: '/vaccine/vaccinationRecord/' + recordId,
    method: 'get'
  })
}

// 新增接种记录
export function addVaccinationRecord(data) {
  return request({
    url: '/vaccine/vaccinationRecord',
    method: 'post',
    data: data
  })
}

// 修改接种记录
export function updateVaccinationRecord(data) {
  return request({
    url: '/vaccine/vaccinationRecord',
    method: 'put',
    data: data
  })
}

// 删除接种记录
export function delVaccinationRecord(recordId) {
  return request({
    url: '/vaccine/vaccinationRecord/' + recordId,
    method: 'delete'
  })
}
