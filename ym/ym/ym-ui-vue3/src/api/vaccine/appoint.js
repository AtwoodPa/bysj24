import request from '@/utils/request'

export function getVaccines() {
  return request({
    url: '/vaccine/appoint/getVaccines',
    method: 'get'
  })
}


export function getAppointAddress() {
  return request({
    url: '/vaccine/appoint/getAppointAddress',
    method: 'get'
  })
}


// 查询预约列表
export function listAppoint(query) {
  return request({
    url: '/vaccine/appoint/getAppointRecordsByUserId',
    method: 'get',
    params: query
  })
}

// 查询预约详细
export function getAppoint(id) {
  return request({
    url: '/vaccine/appoint/' + id,
    method: 'get'
  })
}

export function addOrder(data) {
  return request({
    url: '/vaccine/appoint/addOrder' ,
    method: 'post',
    data: data
  })
}

// 立即预约
export function addAppoint(data) {
  return request({
    url: '/vaccine/appoint/appoint',
    method: 'post',
    data: data
  })
}

// 修改预约
export function updateAppoint(data) {
  return request({
    url: '/vaccine/appoint',
    method: 'put',
    data: data
  })
}

// 删除预约
export function delAppoint(id) {
  return request({
    url: '/vaccine/appoint/' + id,
    method: 'delete'
  })
}
