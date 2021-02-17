class DocumentDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      number: {source: 'Document.number' , searchable: true , orderable: true},
      title: {source: "Document.title" , searchable: true , orderable: true},
      department_name: {source: "Document.department_id" , searchable: true , orderable: true},
      speed_color: {source: "Document.confidential_id" , searchable: true , orderable: true},
      dated: {source: "Document.dated" , searchable: true , orderable: true}

    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
        number: record.number,
        title: record.title,
        department_name: record.department.name,
        speed_color: record.confidential.name,
        dated: record.dated,
      }
    end
  end

  def get_raw_records
    # insert query here
    # User.all
    @documents = Document.all.order(confidential_id: :desc , dated: :desc)
  end

end
