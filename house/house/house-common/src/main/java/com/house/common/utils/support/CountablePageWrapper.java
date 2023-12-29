package com.house.common.utils.support;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.collections4.CollectionUtils;

import java.util.Collections;
import java.util.List;
import java.util.function.Function;

@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CountablePageWrapper<T> {

    private int pageNo;
    private int pageSize;
    private int totalPage;
    private long totalCount;
    private List<T> dataList;

    public static <T> CountablePageWrapper<T> of(int pageNo, int pageSize, long totalCount, List<T> dataList) {
        CountablePageWrapper<T> wrapper = new CountablePageWrapper<>();
        wrapper.setPageNo(pageNo);
        wrapper.setPageSize(pageSize);
        wrapper.setTotalCount(totalCount);
        wrapper.setDataList(dataList);
        return wrapper;
    }

    public static <T> CountablePageWrapper<T> ofEmpty(int pageNo, int pageSize) {
        return of(pageNo, pageSize, 0, Collections.emptyList());
    }

    public static <T> CountablePageWrapper<T> ofEmpty(BaseQueryDto queryDto) {
        return of(queryDto.getPageNo(), queryDto.getPageSize(), 0, Collections.emptyList());
    }

    public static <T> CountablePageWrapper<T> of(BaseQueryDto queryDto, long totalCount, List<T> dataList) {
        return of(queryDto.getPageNo(), queryDto.getPageSize(), totalCount, dataList);
    }

    public CountablePageWrapper(int pageNo, int pageSize, long totalCount, List<T> dataList) {
        this.pageNo = pageNo;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.dataList = dataList;
    }

    public int getTotalPage() {
        if (totalCount <= 0 || pageSize <= 0) {
            return 0;
        }
        return (int) Math.ceil(totalCount / (double) pageSize);
    }

    public boolean empty() {
        return CollectionUtils.isEmpty(dataList);
    }

    public static <R, T> CountablePageWrapper<R> transform(CountablePageWrapper<T> wrapper,
                                                           Function<List<T>, List<R>> transformer) {
        if (wrapper.empty()) {
            return CountablePageWrapper.ofEmpty(wrapper.getPageNo(), wrapper.getPageSize());
        }
        List<R> dataList = transformer.apply(wrapper.getDataList());
        return CountablePageWrapper.of(wrapper.getPageNo(), wrapper.getPageSize(), wrapper.getTotalCount(), dataList);
    }
}
