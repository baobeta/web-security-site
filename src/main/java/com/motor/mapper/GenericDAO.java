package com.motor.mapper;

import java.util.List;

public interface GenericDAO<T> {
    @SuppressWarnings("hiding")
    <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);

    void update(String sql, Object... parameters);

    Long insert(String sql, Object... parameters);

    int count(String sql, Object... parameters);

    long get(String sql, Object... parameters);
}
