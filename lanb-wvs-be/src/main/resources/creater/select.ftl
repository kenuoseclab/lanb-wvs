		select
<#list columns as column>
			a.`${column.columnName}` as `${column._columnName}`<#if column_has_next>,</#if>
</#list>
		from
		    ${tableName} a
		<where>
			<trim suffixOverrides="and">
			<#list columns as column>
				<#if column.columnType?contains("varchar") >
				<if test="${column._columnName} != null and ${column._columnName} !=''">
					a.`${column.columnName}` = like CONCAT(CONCAT('%', ${r"#{"}${column._columnName}${r"}"}), '%') and
				</if>
				<#else>
				<if test="${column._columnName} != null">
					a.`${column.columnName}` = ${r"#{"}${column._columnName}${r"}"} and
				</if>
				</#if>
			</#list>
			</trim>
		</where>
