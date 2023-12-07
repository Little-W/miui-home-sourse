.class public final Lio/branch/search/KBranchRemoteConfiguration$$serializer;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/KBranchRemoteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lio/branch/search/KBranchRemoteConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public static final INSTANCE:Lio/branch/search/KBranchRemoteConfiguration$$serializer;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;

    invoke-direct {v0}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;-><init>()V

    sput-object v0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->INSTANCE:Lio/branch/search/KBranchRemoteConfiguration$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "io.branch.search.KBranchRemoteConfiguration"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const/4 v0, 0x1

    const-string v2, "enc_key"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "enc_key_id"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "network_data_retention_window"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "analytics_records_limit"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "fallback_latency_threshold"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "ads_zero_state_threshold"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "ping_job_cap"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "sdk_device_id"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "identity_cookies"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "network_capping_rules"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "app_usage_event_types"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "sqlite_max_cache_size"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "payload_upload_max_count"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "payload_upload_max_bytes"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "max_payloads_to_store_on_disk"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "search_skeleton"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "zero_state_skeleton"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "app_store_skeleton"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "app_store_query_param_bindings"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "app_store_use_api"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "error_ping_param_rule"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "max_url_impression_tracking_pos"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v2, "all_features"

    invoke-virtual {v1, v2, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/16 p0, 0x17

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v2, 0x1

    aput-object v0, p0, v2

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v3, 0x2

    aput-object v0, p0, v3

    const/4 v3, 0x3

    aput-object v0, p0, v3

    const/4 v3, 0x4

    aput-object v0, p0, v3

    const/4 v3, 0x5

    aput-object v0, p0, v3

    const/4 v3, 0x6

    aput-object v0, p0, v3

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x7

    aput-object v0, p0, v3

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v3, v0, v0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v0, 0x8

    aput-object v3, p0, v0

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v0, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x9

    aput-object v0, p0, v3

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v0, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xa

    aput-object v0, p0, v3

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v3, 0xb

    aput-object v0, p0, v3

    const/16 v3, 0xc

    aput-object v0, p0, v3

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    const/16 v3, 0xd

    aput-object v0, p0, v3

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v3, 0xe

    aput-object v0, p0, v3

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v4, v2, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v5, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v6, v5, v1

    const-string v7, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v0, v7, v3, v4, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xf

    aput-object v0, p0, v3

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v4, v2, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v5, v2, [Lkotlinx/serialization/KSerializer;

    aput-object v6, v5, v1

    invoke-direct {v0, v7, v3, v4, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x10

    aput-object v0, p0, v3

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v4, v2, [Lkotlin/reflect/KClass;

    const-class v5, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    aput-object v6, v2, v1

    invoke-direct {v0, v7, v3, v4, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v1, 0x11

    aput-object v0, p0, v1

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v1, 0x12

    aput-object v0, p0, v1

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v1, 0x13

    aput-object v0, p0, v1

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v1, 0x14

    aput-object v0, p0, v1

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, p0, v1

    sget-object v0, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    const/16 v1, 0x16

    aput-object v0, p0, v1

    return-object p0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KBranchRemoteConfiguration;
    .locals 69

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x2

    const-string v14, "io.branch.search.internal.ui.UISkeletonResolver"

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v13

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v9

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v12

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v7

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v10, v15, v15}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v11, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    new-instance v11, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v15, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v11, v15}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v5, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v11, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v15, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v11, v15}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    const/16 v11, 0xc

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v11

    const/16 v15, 0xd

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v18

    const/16 v15, 0xe

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v15

    move-object/from16 v20, v2

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v21, Lio/branch/search/internal/ui/UISkeletonResolver;

    move/from16 v22, v3

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    move-object/from16 v21, v4

    move-object/from16 v17, v5

    const/4 v4, 0x1

    new-array v5, v4, [Lkotlin/reflect/KClass;

    const-class v23, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v5, v24

    move-object/from16 p1, v6

    new-array v6, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v23, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v23, v6, v24

    invoke-direct {v2, v14, v3, v5, v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v6, v4, [Lkotlin/reflect/KClass;

    const-class v25, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v25

    aput-object v25, v6, v24

    move-object/from16 v25, v2

    new-array v2, v4, [Lkotlinx/serialization/KSerializer;

    aput-object v23, v2, v24

    invoke-direct {v3, v14, v5, v6, v2}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v6, v4, [Lkotlin/reflect/KClass;

    const-class v26, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v26

    aput-object v26, v6, v24

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    aput-object v23, v4, v24

    invoke-direct {v3, v14, v5, v6, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x11

    invoke-interface {v0, v1, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v4, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v4, v5, v5}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v5, 0x12

    invoke-interface {v0, v1, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const/16 v5, 0x13

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    new-instance v6, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v6, v14}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v14, 0x14

    invoke-interface {v0, v1, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    sget-object v14, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    move-object/from16 p0, v2

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v14, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    move-object/from16 v23, v2

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/internal/control/AllFeatures;

    const v14, 0x7fffffff

    move-object/from16 v61, p0

    move-object/from16 v51, p1

    move-object/from16 v67, v2

    move-object/from16 v62, v3

    move-object/from16 v63, v4

    move/from16 v64, v5

    move-object/from16 v65, v6

    move/from16 v50, v7

    move/from16 v49, v8

    move/from16 v47, v9

    move-object/from16 v52, v10

    move/from16 v56, v11

    move/from16 v48, v12

    move/from16 v46, v13

    move/from16 v43, v14

    move/from16 v59, v15

    move-object/from16 v45, v16

    move-object/from16 v53, v17

    move-wide/from16 v57, v18

    move-object/from16 v44, v20

    move-object/from16 v54, v21

    move/from16 v55, v22

    move-object/from16 v66, v23

    move-object/from16 v60, v25

    goto/16 :goto_8

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v15, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v36, v13

    move-wide/from16 v18, v15

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v15, v36

    move-object/from16 v16, v15

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v10}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v10, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    move-object/from16 v37, v15

    const/16 v15, 0x16

    invoke-interface {v0, v1, v15, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/internal/control/AllFeatures;

    const/high16 v10, 0x400000

    goto :goto_1

    :pswitch_1
    move-object/from16 v37, v15

    sget-object v10, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v15, 0x15

    invoke-interface {v0, v1, v15, v10, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/high16 v10, 0x200000

    goto :goto_1

    :pswitch_2
    move-object/from16 v37, v15

    new-instance v10, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v10, v15}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v15, 0x14

    invoke-interface {v0, v1, v15, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/high16 v10, 0x100000

    goto :goto_1

    :pswitch_3
    move-object/from16 v37, v15

    const/16 v10, 0x13

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v10

    const/high16 v15, 0x80000

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move/from16 v35, v10

    move/from16 v24, v15

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v37, v15

    new-instance v10, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v10, v15, v15}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v15, 0x12

    invoke-interface {v0, v1, v15, v10, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/Map;

    const/high16 v10, 0x40000

    :goto_1
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v37, v15

    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v15, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    const/4 v3, 0x1

    new-array v4, v3, [Lkotlin/reflect/KClass;

    const-class v17, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    const/16 v40, 0x0

    aput-object v17, v4, v40

    move-object/from16 v41, v5

    new-array v5, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v3, v5, v40

    invoke-direct {v10, v14, v15, v4, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x11

    invoke-interface {v0, v1, v3, v10, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v10, 0x20000

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x1

    new-array v10, v5, [Lkotlin/reflect/KClass;

    const-class v15, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v10, v17

    new-array v15, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v40, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v40, v15, v17

    invoke-direct {v3, v14, v4, v10, v15}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0x10

    invoke-interface {v0, v1, v4, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/high16 v10, 0x10000

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v4, 0x10

    const/4 v5, 0x1

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v10, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v15, v5, [Lkotlin/reflect/KClass;

    const-class v17, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    const/16 v40, 0x0

    aput-object v17, v15, v40

    new-array v4, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v5, v4, v40

    invoke-direct {v3, v14, v10, v15, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0xf

    invoke-interface {v0, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lio/branch/search/internal/ui/UISkeletonResolver;

    const v10, 0x8000

    goto :goto_2

    :pswitch_8
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    const/16 v10, 0x4000

    move/from16 v34, v3

    goto :goto_2

    :pswitch_9
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xd

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v18

    const/16 v10, 0x2000

    goto :goto_2

    :pswitch_a
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xc

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v3

    const/16 v10, 0x1000

    move/from16 v33, v3

    goto :goto_2

    :pswitch_b
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v4

    const/16 v10, 0x800

    move/from16 v32, v4

    :goto_2
    move/from16 v24, v10

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0xa

    goto :goto_4

    :pswitch_c
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xb

    new-instance v4, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v5, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v5, 0xa

    invoke-interface {v0, v1, v5, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/util/List;

    const/16 v10, 0x400

    move/from16 v24, v10

    const/4 v3, 0x0

    const/4 v4, 0x7

    :goto_4
    const/16 v10, 0x9

    goto :goto_5

    :pswitch_d
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xb

    const/16 v5, 0xa

    new-instance v4, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v10, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v4, v10}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v10, 0x9

    invoke-interface {v0, v1, v10, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/util/List;

    const/16 v4, 0x200

    move/from16 v24, v4

    const/4 v3, 0x0

    const/4 v4, 0x7

    :goto_5
    const/16 v15, 0x8

    goto/16 :goto_7

    :pswitch_e
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/16 v3, 0xb

    const/16 v5, 0xa

    const/16 v10, 0x9

    new-instance v4, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v4, v15, v15}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v15, 0x8

    invoke-interface {v0, v1, v15, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/util/Map;

    const/16 v4, 0x100

    move/from16 v24, v4

    const/4 v3, 0x0

    const/4 v4, 0x7

    goto/16 :goto_7

    :pswitch_f
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x80

    move-object/from16 v37, v25

    move/from16 v24, v26

    goto/16 :goto_6

    :pswitch_10
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v24

    const/16 v25, 0x40

    move/from16 v31, v24

    move/from16 v24, v25

    goto :goto_6

    :pswitch_11
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v23

    const/16 v24, 0x20

    move/from16 v30, v23

    goto :goto_6

    :pswitch_12
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x4

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v22

    move/from16 v29, v22

    const/4 v3, 0x0

    const/16 v24, 0x10

    goto :goto_7

    :pswitch_13
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v21

    move/from16 v24, v15

    move/from16 v28, v21

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :pswitch_14
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v20

    move/from16 v27, v20

    const/4 v3, 0x0

    const/16 v24, 0x4

    goto :goto_7

    :pswitch_15
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    const/16 v24, 0x2

    goto :goto_7

    :pswitch_16
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v10, 0x9

    const/16 v15, 0x8

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v36

    const/16 v24, 0x1

    :goto_7
    or-int v2, v2, v24

    move-object/from16 v15, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v41

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v41, v5

    move-object/from16 v37, v15

    move/from16 v43, v2

    move-object/from16 v62, v6

    move-object/from16 v61, v7

    move-object/from16 v60, v8

    move-object/from16 v53, v9

    move-object/from16 v63, v11

    move-object/from16 v54, v12

    move-object/from16 v52, v13

    move-object/from16 v45, v16

    move-wide/from16 v57, v18

    move/from16 v46, v27

    move/from16 v47, v28

    move/from16 v48, v29

    move/from16 v49, v30

    move/from16 v50, v31

    move/from16 v55, v32

    move/from16 v56, v33

    move/from16 v59, v34

    move/from16 v64, v35

    move-object/from16 v44, v36

    move-object/from16 v51, v37

    move-object/from16 v67, v38

    move-object/from16 v66, v39

    move-object/from16 v65, v41

    :goto_8
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration;

    move-object/from16 v42, v0

    const/16 v68, 0x0

    invoke-direct/range {v42 .. v68}, Lio/branch/search/KBranchRemoteConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V
    .locals 0

    const-string p0, "encoder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lio/branch/search/KBranchRemoteConfiguration;->a(Lio/branch/search/KBranchRemoteConfiguration;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method
