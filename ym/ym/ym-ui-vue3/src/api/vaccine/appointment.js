import request from '@/utils/request'

// 查询疫苗预约列表
export function listAppointment(query) {
  return request({
    url: '/vaccine/appointment/list',
    method: 'get',
    params: query
  })
}

// 查询疫苗预约详细
export function getAppointment(appointmentId) {
  return request({
    url: '/vaccine/appointment/' + appointmentId,
    method: 'get'
  })
}

// 新增疫苗预约
export function addAppointment(data) {
  return request({
    url: '/vaccine/appointment',
    method: 'post',
    data: data
  })
}

// 修改疫苗预约
export function updateAppointment(data) {
  return request({
    url: '/vaccine/appointment',
    method: 'put',
    data: data
  })
}

// 删除疫苗预约
export function delAppointment(appointmentId) {
  return request({
    url: '/vaccine/appointment/' + appointmentId,
    method: 'delete'
  })
}
