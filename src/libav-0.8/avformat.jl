# Julia wrapper for header: /usr/include/libavformat/avformat.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function av_metadata_get(_m::Ptr,_key::Union(Ptr,ByteString),_prev::Ptr,_flags::Integer)
    m = convert(Ptr{AVDictionary},_m)
    key = convert(Ptr{Uint8},_key)
    prev = convert(Ptr{AVDictionaryEntry},_prev)
    flags = int32(_flags)
    ccall((:av_metadata_get,libavformat),Ptr{AVDictionaryEntry},(Ptr{AVDictionary},Ptr{Uint8},Ptr{AVDictionaryEntry},Cint),m,key,prev,flags)
end
function av_metadata_set2(_pm::Ptr,_key::Union(Ptr,ByteString),_value::Union(Ptr,ByteString),_flags::Integer)
    pm = convert(Ptr{Ptr{AVDictionary}},_pm)
    key = convert(Ptr{Uint8},_key)
    value = convert(Ptr{Uint8},_value)
    flags = int32(_flags)
    ccall((:av_metadata_set2,libavformat),Cint,(Ptr{Ptr{AVDictionary}},Ptr{Uint8},Ptr{Uint8},Cint),pm,key,value,flags)
end
function av_metadata_conv(_ctx::Ptr,_d_conv::Ptr,_s_conv::Ptr)
    ctx = convert(Ptr{AVFormatContext},_ctx)
    d_conv = convert(Ptr{AVMetadataConv},_d_conv)
    s_conv = convert(Ptr{AVMetadataConv},_s_conv)
    ccall((:av_metadata_conv,libavformat),Void,(Ptr{AVFormatContext},Ptr{AVMetadataConv},Ptr{AVMetadataConv}),ctx,d_conv,s_conv)
end
function av_metadata_copy(_dst::Ptr,_src::Ptr,_flags::Integer)
    dst = convert(Ptr{Ptr{AVDictionary}},_dst)
    src = convert(Ptr{AVDictionary},_src)
    flags = int32(_flags)
    ccall((:av_metadata_copy,libavformat),Void,(Ptr{Ptr{AVDictionary}},Ptr{AVDictionary},Cint),dst,src,flags)
end
function av_metadata_free(_m::Ptr)
    m = convert(Ptr{Ptr{AVDictionary}},_m)
    ccall((:av_metadata_free,libavformat),Void,(Ptr{Ptr{AVDictionary}},),m)
end
function av_get_packet(_s::Ptr,_pkt::Ptr,_size::Integer)
    s = convert(Ptr{AVIOContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    size = int32(_size)
    ccall((:av_get_packet,libavformat),Cint,(Ptr{AVIOContext},Ptr{AVPacket},Cint),s,pkt,size)
end
function av_append_packet(_s::Ptr,_pkt::Ptr,_size::Integer)
    s = convert(Ptr{AVIOContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    size = int32(_size)
    ccall((:av_append_packet,libavformat),Cint,(Ptr{AVIOContext},Ptr{AVPacket},Cint),s,pkt,size)
end
function avformat_version()
    ccall((:avformat_version,libavformat),Uint32,())
end
function avformat_configuration()
    ccall((:avformat_configuration,libavformat),Ptr{Uint8},())
end
function avformat_license()
    ccall((:avformat_license,libavformat),Ptr{Uint8},())
end
function av_register_all()
    ccall((:av_register_all,libavformat),Void,())
end
function av_register_input_format(_format::Ptr)
    format = convert(Ptr{AVInputFormat},_format)
    ccall((:av_register_input_format,libavformat),Void,(Ptr{AVInputFormat},),format)
end
function av_register_output_format(_format::Ptr)
    format = convert(Ptr{AVOutputFormat},_format)
    ccall((:av_register_output_format,libavformat),Void,(Ptr{AVOutputFormat},),format)
end
function avformat_network_init()
    ccall((:avformat_network_init,libavformat),Cint,())
end
function avformat_network_deinit()
    ccall((:avformat_network_deinit,libavformat),Cint,())
end
function av_iformat_next(_f::Ptr)
    f = convert(Ptr{AVInputFormat},_f)
    ccall((:av_iformat_next,libavformat),Ptr{AVInputFormat},(Ptr{AVInputFormat},),f)
end
function av_oformat_next(_f::Ptr)
    f = convert(Ptr{AVOutputFormat},_f)
    ccall((:av_oformat_next,libavformat),Ptr{AVOutputFormat},(Ptr{AVOutputFormat},),f)
end
function avformat_alloc_context()
    ccall((:avformat_alloc_context,libavformat),Ptr{AVFormatContext},())
end
function avformat_free_context(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:avformat_free_context,libavformat),Void,(Ptr{AVFormatContext},),s)
end
function avformat_get_class()
    ccall((:avformat_get_class,libavformat),Ptr{AVClass},())
end
function avformat_new_stream(_s::Ptr,_c::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    c = convert(Ptr{AVCodec},_c)
    ccall((:avformat_new_stream,libavformat),Ptr{AVStream},(Ptr{AVFormatContext},Ptr{AVCodec}),s,c)
end
function av_new_program(_s::Ptr,_id::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    id = int32(_id)
    ccall((:av_new_program,libavformat),Ptr{AVProgram},(Ptr{AVFormatContext},Cint),s,id)
end
function av_guess_image2_codec(_filename::Union(Ptr,ByteString))
    filename = convert(Ptr{Uint8},_filename)
    ccall((:av_guess_image2_codec,libavformat),Cint,(Ptr{Uint8},),filename)
end
function av_pkt_dump(_f::Ptr,_pkt::Ptr,_dump_payload::Integer)
    f = convert(Ptr{FILE},_f)
    pkt = convert(Ptr{AVPacket},_pkt)
    dump_payload = int32(_dump_payload)
    ccall((:av_pkt_dump,libavformat),Void,(Ptr{FILE},Ptr{AVPacket},Cint),f,pkt,dump_payload)
end
function av_pkt_dump_log(_avcl::Ptr,_level::Integer,_pkt::Ptr,_dump_payload::Integer)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    pkt = convert(Ptr{AVPacket},_pkt)
    dump_payload = int32(_dump_payload)
    ccall((:av_pkt_dump_log,libavformat),Void,(Ptr{Void},Cint,Ptr{AVPacket},Cint),avcl,level,pkt,dump_payload)
end
function av_find_input_format(_short_name::Union(Ptr,ByteString))
    short_name = convert(Ptr{Uint8},_short_name)
    ccall((:av_find_input_format,libavformat),Ptr{AVInputFormat},(Ptr{Uint8},),short_name)
end
function av_probe_input_format(_pd::Ptr,_is_opened::Integer)
    pd = convert(Ptr{AVProbeData},_pd)
    is_opened = int32(_is_opened)
    ccall((:av_probe_input_format,libavformat),Ptr{AVInputFormat},(Ptr{AVProbeData},Cint),pd,is_opened)
end
function av_probe_input_format2(_pd::Ptr,_is_opened::Integer,_score_max::Ptr)
    pd = convert(Ptr{AVProbeData},_pd)
    is_opened = int32(_is_opened)
    score_max = convert(Ptr{Cint},_score_max)
    ccall((:av_probe_input_format2,libavformat),Ptr{AVInputFormat},(Ptr{AVProbeData},Cint,Ptr{Cint}),pd,is_opened,score_max)
end
function av_probe_input_buffer(_pb::Ptr,_fmt::Ptr,_filename::Union(Ptr,ByteString),_logctx::Ptr,_offset::Integer,_max_probe_size::Integer)
    pb = convert(Ptr{AVIOContext},_pb)
    fmt = convert(Ptr{Ptr{AVInputFormat}},_fmt)
    filename = convert(Ptr{Uint8},_filename)
    logctx = convert(Ptr{Void},_logctx)
    offset = uint32(_offset)
    max_probe_size = uint32(_max_probe_size)
    ccall((:av_probe_input_buffer,libavformat),Cint,(Ptr{AVIOContext},Ptr{Ptr{AVInputFormat}},Ptr{Uint8},Ptr{Void},Uint32,Uint32),pb,fmt,filename,logctx,offset,max_probe_size)
end
function av_open_input_stream(_ic_ptr::Ptr,_pb::Ptr,_filename::Union(Ptr,ByteString),_fmt::Ptr,_ap::Ptr)
    ic_ptr = convert(Ptr{Ptr{AVFormatContext}},_ic_ptr)
    pb = convert(Ptr{AVIOContext},_pb)
    filename = convert(Ptr{Uint8},_filename)
    fmt = convert(Ptr{AVInputFormat},_fmt)
    ap = convert(Ptr{AVFormatParameters},_ap)
    ccall((:av_open_input_stream,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Ptr{AVIOContext},Ptr{Uint8},Ptr{AVInputFormat},Ptr{AVFormatParameters}),ic_ptr,pb,filename,fmt,ap)
end
function av_open_input_file(_ic_ptr::Ptr,_filename::Union(Ptr,ByteString),_fmt::Ptr,_buf_size::Integer,_ap::Ptr)
    ic_ptr = convert(Ptr{Ptr{AVFormatContext}},_ic_ptr)
    filename = convert(Ptr{Uint8},_filename)
    fmt = convert(Ptr{AVInputFormat},_fmt)
    buf_size = int32(_buf_size)
    ap = convert(Ptr{AVFormatParameters},_ap)
    ccall((:av_open_input_file,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Ptr{Uint8},Ptr{AVInputFormat},Cint,Ptr{AVFormatParameters}),ic_ptr,filename,fmt,buf_size,ap)
end
function avformat_open_input(_ps::Ptr,_filename::Union(Ptr,ByteString),_fmt::Ptr,_options::Ptr)
    ps = convert(Ptr{Ptr{AVFormatContext}},_ps)
    filename = convert(Ptr{Uint8},_filename)
    fmt = convert(Ptr{AVInputFormat},_fmt)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avformat_open_input,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Ptr{Uint8},Ptr{AVInputFormat},Ptr{Ptr{AVDictionary}}),ps,filename,fmt,options)
end
function av_find_stream_info(_ic::Ptr)
    ic = convert(Ptr{AVFormatContext},_ic)
    ccall((:av_find_stream_info,libavformat),Cint,(Ptr{AVFormatContext},),ic)
end
function avformat_find_stream_info(_ic::Ptr,_options::Ptr)
    ic = convert(Ptr{AVFormatContext},_ic)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avformat_find_stream_info,libavformat),Cint,(Ptr{AVFormatContext},Ptr{Ptr{AVDictionary}}),ic,options)
end
function av_find_best_stream(_ic::Ptr,_type::AVMediaType,_wanted_stream_nb::Integer,_related_stream::Integer,_decoder_ret::Ptr,_flags::Integer)
    ic = convert(Ptr{AVFormatContext},_ic)
    wanted_stream_nb = int32(_wanted_stream_nb)
    related_stream = int32(_related_stream)
    decoder_ret = convert(Ptr{Ptr{AVCodec}},_decoder_ret)
    flags = int32(_flags)
    ccall((:av_find_best_stream,libavformat),Cint,(Ptr{AVFormatContext},AVMediaType,Cint,Cint,Ptr{Ptr{AVCodec}},Cint),ic,_type,wanted_stream_nb,related_stream,decoder_ret,flags)
end
function av_read_packet(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_read_packet,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_read_frame(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_read_frame,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_seek_frame(_s::Ptr,_stream_index::Integer,timestamp::Int64,_flags::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ccall((:av_seek_frame,libavformat),Cint,(Ptr{AVFormatContext},Cint,Int64,Cint),s,stream_index,timestamp,flags)
end
function avformat_seek_file(_s::Ptr,_stream_index::Integer,min_ts::Int64,ts::Int64,max_ts::Int64,_flags::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ccall((:avformat_seek_file,libavformat),Cint,(Ptr{AVFormatContext},Cint,Int64,Int64,Int64,Cint),s,stream_index,min_ts,ts,max_ts,flags)
end
function av_read_play(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_read_play,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_read_pause(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_read_pause,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_close_input_stream(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_close_input_stream,libavformat),Void,(Ptr{AVFormatContext},),s)
end
function av_close_input_file(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_close_input_file,libavformat),Void,(Ptr{AVFormatContext},),s)
end
function avformat_close_input(_s::Ptr)
    s = convert(Ptr{Ptr{AVFormatContext}},_s)
    ccall((:avformat_close_input,libavformat),Void,(Ptr{Ptr{AVFormatContext}},),s)
end
function av_new_stream(_s::Ptr,_id::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    id = int32(_id)
    ccall((:av_new_stream,libavformat),Ptr{AVStream},(Ptr{AVFormatContext},Cint),s,id)
end
function av_set_pts_info(_s::Ptr,_pts_wrap_bits::Integer,_pts_num::Integer,_pts_den::Integer)
    s = convert(Ptr{AVStream},_s)
    pts_wrap_bits = int32(_pts_wrap_bits)
    pts_num = uint32(_pts_num)
    pts_den = uint32(_pts_den)
    ccall((:av_set_pts_info,libavformat),Void,(Ptr{AVStream},Cint,Uint32,Uint32),s,pts_wrap_bits,pts_num,pts_den)
end
function av_seek_frame_binary(_s::Ptr,_stream_index::Integer,target_ts::Int64,_flags::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ccall((:av_seek_frame_binary,libavformat),Cint,(Ptr{AVFormatContext},Cint,Int64,Cint),s,stream_index,target_ts,flags)
end
function av_update_cur_dts(_s::Ptr,_ref_st::Ptr,timestamp::Int64)
    s = convert(Ptr{AVFormatContext},_s)
    ref_st = convert(Ptr{AVStream},_ref_st)
    ccall((:av_update_cur_dts,libavformat),Void,(Ptr{AVFormatContext},Ptr{AVStream},Int64),s,ref_st,timestamp)
end
function av_gen_search(_s::Ptr,_stream_index::Integer,target_ts::Int64,pos_min::Int64,pos_max::Int64,pos_limit::Int64,ts_min::Int64,ts_max::Int64,_flags::Integer,_ts_ret::Ptr,_read_timestamp::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    stream_index = int32(_stream_index)
    flags = int32(_flags)
    ts_ret = convert(Ptr{Int64},_ts_ret)
    read_timestamp = convert(Ptr{Void},_read_timestamp)
    ccall((:av_gen_search,libavformat),Int64,(Ptr{AVFormatContext},Cint,Int64,Int64,Int64,Int64,Int64,Int64,Cint,Ptr{Int64},Ptr{Void}),s,stream_index,target_ts,pos_min,pos_max,pos_limit,ts_min,ts_max,flags,ts_ret,read_timestamp)
end
function av_set_parameters(_s::Ptr,_ap::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ap = convert(Ptr{AVFormatParameters},_ap)
    ccall((:av_set_parameters,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVFormatParameters}),s,ap)
end
function avformat_write_header(_s::Ptr,_options::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    options = convert(Ptr{Ptr{AVDictionary}},_options)
    ccall((:avformat_write_header,libavformat),Cint,(Ptr{AVFormatContext},Ptr{Ptr{AVDictionary}}),s,options)
end
function av_write_header(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_write_header,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_write_frame(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_write_frame,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_interleaved_write_frame(_s::Ptr,_pkt::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    pkt = convert(Ptr{AVPacket},_pkt)
    ccall((:av_interleaved_write_frame,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket}),s,pkt)
end
function av_interleave_packet_per_dts(_s::Ptr,_out::Ptr,_pkt::Ptr,_flush::Integer)
    s = convert(Ptr{AVFormatContext},_s)
    out = convert(Ptr{AVPacket},_out)
    pkt = convert(Ptr{AVPacket},_pkt)
    flush = int32(_flush)
    ccall((:av_interleave_packet_per_dts,libavformat),Cint,(Ptr{AVFormatContext},Ptr{AVPacket},Ptr{AVPacket},Cint),s,out,pkt,flush)
end
function av_write_trailer(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_write_trailer,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_guess_format(_short_name::Union(Ptr,ByteString),_filename::Union(Ptr,ByteString),_mime_type::Union(Ptr,ByteString))
    short_name = convert(Ptr{Uint8},_short_name)
    filename = convert(Ptr{Uint8},_filename)
    mime_type = convert(Ptr{Uint8},_mime_type)
    ccall((:av_guess_format,libavformat),Ptr{AVOutputFormat},(Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}),short_name,filename,mime_type)
end
function av_guess_codec(_fmt::Ptr,_short_name::Union(Ptr,ByteString),_filename::Union(Ptr,ByteString),_mime_type::Union(Ptr,ByteString),_type::AVMediaType)
    fmt = convert(Ptr{AVOutputFormat},_fmt)
    short_name = convert(Ptr{Uint8},_short_name)
    filename = convert(Ptr{Uint8},_filename)
    mime_type = convert(Ptr{Uint8},_mime_type)
    ccall((:av_guess_codec,libavformat),Cint,(Ptr{AVOutputFormat},Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},AVMediaType),fmt,short_name,filename,mime_type,_type)
end
function av_hex_dump(_f::Ptr,_buf::Union(Ptr,ByteString),_size::Integer)
    f = convert(Ptr{FILE},_f)
    buf = convert(Ptr{Uint8},_buf)
    size = int32(_size)
    ccall((:av_hex_dump,libavformat),Void,(Ptr{FILE},Ptr{Uint8},Cint),f,buf,size)
end
function av_hex_dump_log(_avcl::Ptr,_level::Integer,_buf::Union(Ptr,ByteString),_size::Integer)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    buf = convert(Ptr{Uint8},_buf)
    size = int32(_size)
    ccall((:av_hex_dump_log,libavformat),Void,(Ptr{Void},Cint,Ptr{Uint8},Cint),avcl,level,buf,size)
end
function av_pkt_dump2(_f::Ptr,_pkt::Ptr,_dump_payload::Integer,_st::Ptr)
    f = convert(Ptr{FILE},_f)
    pkt = convert(Ptr{AVPacket},_pkt)
    dump_payload = int32(_dump_payload)
    st = convert(Ptr{AVStream},_st)
    ccall((:av_pkt_dump2,libavformat),Void,(Ptr{FILE},Ptr{AVPacket},Cint,Ptr{AVStream}),f,pkt,dump_payload,st)
end
function av_pkt_dump_log2(_avcl::Ptr,_level::Integer,_pkt::Ptr,_dump_payload::Integer,_st::Ptr)
    avcl = convert(Ptr{Void},_avcl)
    level = int32(_level)
    pkt = convert(Ptr{AVPacket},_pkt)
    dump_payload = int32(_dump_payload)
    st = convert(Ptr{AVStream},_st)
    ccall((:av_pkt_dump_log2,libavformat),Void,(Ptr{Void},Cint,Ptr{AVPacket},Cint,Ptr{AVStream}),avcl,level,pkt,dump_payload,st)
end
function av_codec_get_id(_tags::Ptr,_tag::Integer)
    tags = convert(Ptr{Ptr{AVCodecTag}},_tags)
    tag = uint32(_tag)
    ccall((:av_codec_get_id,libavformat),Cint,(Ptr{Ptr{AVCodecTag}},Uint32),tags,tag)
end
function av_codec_get_tag(_tags::Ptr,id::CodecID)
    tags = convert(Ptr{Ptr{AVCodecTag}},_tags)
    ccall((:av_codec_get_tag,libavformat),Uint32,(Ptr{Ptr{AVCodecTag}},CodecID),tags,id)
end
function av_find_default_stream_index(_s::Ptr)
    s = convert(Ptr{AVFormatContext},_s)
    ccall((:av_find_default_stream_index,libavformat),Cint,(Ptr{AVFormatContext},),s)
end
function av_index_search_timestamp(_st::Ptr,timestamp::Int64,_flags::Integer)
    st = convert(Ptr{AVStream},_st)
    flags = int32(_flags)
    ccall((:av_index_search_timestamp,libavformat),Cint,(Ptr{AVStream},Int64,Cint),st,timestamp,flags)
end
function av_add_index_entry(_st::Ptr,pos::Int64,timestamp::Int64,_size::Integer,_distance::Integer,_flags::Integer)
    st = convert(Ptr{AVStream},_st)
    size = int32(_size)
    distance = int32(_distance)
    flags = int32(_flags)
    ccall((:av_add_index_entry,libavformat),Cint,(Ptr{AVStream},Int64,Int64,Cint,Cint,Cint),st,pos,timestamp,size,distance,flags)
end
function av_url_split(_proto::Union(Ptr,ByteString),_proto_size::Integer,_authorization::Union(Ptr,ByteString),_authorization_size::Integer,_hostname::Union(Ptr,ByteString),_hostname_size::Integer,_port_ptr::Ptr,_path::Union(Ptr,ByteString),_path_size::Integer,_url::Union(Ptr,ByteString))
    proto = convert(Ptr{Uint8},_proto)
    proto_size = int32(_proto_size)
    authorization = convert(Ptr{Uint8},_authorization)
    authorization_size = int32(_authorization_size)
    hostname = convert(Ptr{Uint8},_hostname)
    hostname_size = int32(_hostname_size)
    port_ptr = convert(Ptr{Cint},_port_ptr)
    path = convert(Ptr{Uint8},_path)
    path_size = int32(_path_size)
    url = convert(Ptr{Uint8},_url)
    ccall((:av_url_split,libavformat),Void,(Ptr{Uint8},Cint,Ptr{Uint8},Cint,Ptr{Uint8},Cint,Ptr{Cint},Ptr{Uint8},Cint,Ptr{Uint8}),proto,proto_size,authorization,authorization_size,hostname,hostname_size,port_ptr,path,path_size,url)
end
function dump_format(_ic::Ptr,_index::Integer,_url::Union(Ptr,ByteString),_is_output::Integer)
    ic = convert(Ptr{AVFormatContext},_ic)
    index = int32(_index)
    url = convert(Ptr{Uint8},_url)
    is_output = int32(_is_output)
    ccall((:dump_format,libavformat),Void,(Ptr{AVFormatContext},Cint,Ptr{Uint8},Cint),ic,index,url,is_output)
end
function av_dump_format(_ic::Ptr,_index::Integer,_url::Union(Ptr,ByteString),_is_output::Integer)
    ic = convert(Ptr{AVFormatContext},_ic)
    index = int32(_index)
    url = convert(Ptr{Uint8},_url)
    is_output = int32(_is_output)
    ccall((:av_dump_format,libavformat),Void,(Ptr{AVFormatContext},Cint,Ptr{Uint8},Cint),ic,index,url,is_output)
end
function parse_date(_datestr::Union(Ptr,ByteString),_duration::Integer)
    datestr = convert(Ptr{Uint8},_datestr)
    duration = int32(_duration)
    ccall((:parse_date,libavformat),Int64,(Ptr{Uint8},Cint),datestr,duration)
end
function av_gettime()
    ccall((:av_gettime,libavformat),Int64,())
end
function find_info_tag(_arg::Union(Ptr,ByteString),_arg_size::Integer,_tag1::Union(Ptr,ByteString),_info::Union(Ptr,ByteString))
    arg = convert(Ptr{Uint8},_arg)
    arg_size = int32(_arg_size)
    tag1 = convert(Ptr{Uint8},_tag1)
    info = convert(Ptr{Uint8},_info)
    ccall((:find_info_tag,libavformat),Cint,(Ptr{Uint8},Cint,Ptr{Uint8},Ptr{Uint8}),arg,arg_size,tag1,info)
end
function av_get_frame_filename(_buf::Union(Ptr,ByteString),_buf_size::Integer,_path::Union(Ptr,ByteString),_number::Integer)
    buf = convert(Ptr{Uint8},_buf)
    buf_size = int32(_buf_size)
    path = convert(Ptr{Uint8},_path)
    number = int32(_number)
    ccall((:av_get_frame_filename,libavformat),Cint,(Ptr{Uint8},Cint,Ptr{Uint8},Cint),buf,buf_size,path,number)
end
function av_filename_number_test(_filename::Union(Ptr,ByteString))
    filename = convert(Ptr{Uint8},_filename)
    ccall((:av_filename_number_test,libavformat),Cint,(Ptr{Uint8},),filename)
end
function av_sdp_create(_ac::Ptr,_n_files::Integer,_buf::Union(Ptr,ByteString),_size::Integer)
    ac = convert(Ptr{Ptr{AVFormatContext}},_ac)
    n_files = int32(_n_files)
    buf = convert(Ptr{Uint8},_buf)
    size = int32(_size)
    ccall((:av_sdp_create,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Cint,Ptr{Uint8},Cint),ac,n_files,buf,size)
end
function avf_sdp_create(_ac::Ptr,_n_files::Integer,_buff::Union(Ptr,ByteString),_size::Integer)
    ac = convert(Ptr{Ptr{AVFormatContext}},_ac)
    n_files = int32(_n_files)
    buff = convert(Ptr{Uint8},_buff)
    size = int32(_size)
    ccall((:avf_sdp_create,libavformat),Cint,(Ptr{Ptr{AVFormatContext}},Cint,Ptr{Uint8},Cint),ac,n_files,buff,size)
end
function av_match_ext(_filename::Union(Ptr,ByteString),_extensions::Union(Ptr,ByteString))
    filename = convert(Ptr{Uint8},_filename)
    extensions = convert(Ptr{Uint8},_extensions)
    ccall((:av_match_ext,libavformat),Cint,(Ptr{Uint8},Ptr{Uint8}),filename,extensions)
end
function avformat_query_codec(_ofmt::Ptr,codec_id::CodecID,_std_compliance::Integer)
    ofmt = convert(Ptr{AVOutputFormat},_ofmt)
    std_compliance = int32(_std_compliance)
    ccall((:avformat_query_codec,libavformat),Cint,(Ptr{AVOutputFormat},CodecID,Cint),ofmt,codec_id,std_compliance)
end
function avformat_get_riff_video_tags()
    ccall((:avformat_get_riff_video_tags,libavformat),Ptr{AVCodecTag},())
end
function avformat_get_riff_audio_tags()
    ccall((:avformat_get_riff_audio_tags,libavformat),Ptr{AVCodecTag},())
end
