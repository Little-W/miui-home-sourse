.class public final Lio/branch/search/KBranchRemoteConfiguration$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

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

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "enc_key"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "enc_key_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "network_data_retention_window"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "analytics_records_limit"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "fallback_latency_threshold"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ads_zero_state_threshold"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "ping_job_cap"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "sdk_device_id"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "identity_cookies"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "network_capping_rules"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "zero_state"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "search_skeleton"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "zero_state_skeleton"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "app_store_query_param_bindings"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "app_store_use_api"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "max_url_impression_tracking_pos"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "all_features"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x11

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const/4 v5, 0x6

    aput-object v1, v0, v5

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v5, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v5, v1, v1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v1, 0x8

    aput-object v5, v0, v1

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v5, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v1, v5}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lio/branch/search/CompositeZeroStateMode;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v6, v4, [Lkotlin/reflect/KClass;

    const-class v7, Lio/branch/search/CompositeZeroStateMode$Local;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v2

    const-class v7, Lio/branch/search/CompositeZeroStateMode$Remote;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v3

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lio/branch/search/CompositeZeroStateMode$Local;->a:Lio/branch/search/CompositeZeroStateMode$Local;

    const-string v9, "Local"

    invoke-direct {v7, v9, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v4, v2

    new-instance v7, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v8, Lio/branch/search/CompositeZeroStateMode$Remote;->a:Lio/branch/search/CompositeZeroStateMode$Remote;

    const-string v9, "Remote"

    invoke-direct {v7, v9, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v4, v3

    const-string v7, "io.branch.search.CompositeZeroStateMode"

    invoke-direct {v1, v7, v5, v6, v4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v3, [Lkotlin/reflect/KClass;

    const-class v6, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v2

    new-array v6, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v7, v6, v2

    const-string v8, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v1, v8, v4, v5, v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v3, [Lkotlin/reflect/KClass;

    const-class v6, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v5, v2

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    aput-object v7, v3, v2

    const-string v2, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v1, v2, v4, v5, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v1, v2, v2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lio/branch/search/KBranchRemoteConfiguration;
    .locals 54

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v17

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v10

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v13

    invoke-interface {v0, v1, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v9

    invoke-interface {v0, v1, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v8

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v3, v4, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v12, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v12, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v4, v12}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {v0, v1, v6, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v12, Lio/branch/search/CompositeZeroStateMode;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v5, v14, [Lkotlin/reflect/KClass;

    const-class v21, Lio/branch/search/CompositeZeroStateMode$Local;

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v21

    aput-object v21, v5, v11

    const-class v21, Lio/branch/search/CompositeZeroStateMode$Remote;

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v21

    aput-object v21, v5, v15

    new-array v14, v14, [Lkotlinx/serialization/KSerializer;

    new-instance v15, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/CompositeZeroStateMode$Local;->a:Lio/branch/search/CompositeZeroStateMode$Local;

    move-object/from16 v23, v2

    const-string v2, "Local"

    invoke-direct {v15, v2, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v15, v14, v2

    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v11, Lio/branch/search/CompositeZeroStateMode$Remote;->a:Lio/branch/search/CompositeZeroStateMode$Remote;

    const-string v15, "Remote"

    invoke-direct {v2, v15, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x1

    aput-object v2, v14, v11

    const-string v2, "io.branch.search.CompositeZeroStateMode"

    invoke-direct {v6, v2, v12, v5, v14}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/CompositeZeroStateMode;

    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v12, v11, [Lkotlin/reflect/KClass;

    const-class v14, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    new-array v14, v11, [Lkotlinx/serialization/KSerializer;

    sget-object v20, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v20, v14, v15

    const-string v15, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v5, v15, v6, v12, v14}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v6, 0xb

    invoke-interface {v0, v1, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v12, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v14, v11, [Lkotlin/reflect/KClass;

    const-class v15, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    const/16 v19, 0x0

    aput-object v15, v14, v19

    new-array v11, v11, [Lkotlinx/serialization/KSerializer;

    aput-object v20, v11, v19

    const-string v15, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v6, v15, v12, v14, v11}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v11, 0xc

    invoke-interface {v0, v1, v11, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/internal/ui/UISkeletonResolver;

    new-instance v11, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v11, v12, v12}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v12, 0xd

    invoke-interface {v0, v1, v12, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    const/16 v12, 0xe

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v12

    sget-object v14, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v15, 0xf

    invoke-interface {v0, v1, v15, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    sget-object v15, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    move/from16 v18, v10

    const/16 v10, 0x10

    invoke-interface {v0, v1, v10, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/branch/search/internal/control/AllFeatures;

    const v15, 0x7fffffff

    move-object/from16 v46, v2

    move-object/from16 v44, v3

    move-object/from16 v45, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v43, v7

    move/from16 v42, v8

    move/from16 v41, v9

    move-object/from16 v52, v10

    move-object/from16 v49, v11

    move/from16 v50, v12

    move/from16 v40, v13

    move-object/from16 v51, v14

    move/from16 v35, v15

    move-object/from16 v37, v16

    move/from16 v38, v17

    move/from16 v39, v18

    move-object/from16 v36, v23

    goto/16 :goto_9

    :cond_0
    move v2, v10

    const/16 v10, 0x10

    const/4 v3, 0x0

    move-object v2, v3

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object/from16 v16, v13

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v14}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v14, Lio/branch/search/internal/control/AllFeatures$$serializer;->INSTANCE:Lio/branch/search/internal/control/AllFeatures$$serializer;

    invoke-interface {v0, v1, v10, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/branch/search/internal/control/AllFeatures;

    const/high16 v14, 0x10000

    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v17, v12

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    goto/16 :goto_7

    :pswitch_1
    sget-object v14, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v10, 0xf

    invoke-interface {v0, v1, v10, v14, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/Integer;

    const v10, 0x8000

    goto :goto_1

    :pswitch_2
    const/16 v4, 0xe

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    const/16 v10, 0x4000

    goto :goto_1

    :pswitch_3
    new-instance v10, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v10, v14, v14}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v14, 0xd

    invoke-interface {v0, v1, v14, v10, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const/16 v10, 0x2000

    :goto_1
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v17, v12

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    goto/16 :goto_6

    :pswitch_4
    new-instance v10, Lkotlinx/serialization/SealedClassSerializer;

    const-class v14, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    move-object/from16 v29, v3

    move/from16 v30, v4

    const/4 v3, 0x1

    new-array v4, v3, [Lkotlin/reflect/KClass;

    const-class v21, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v21 .. v21}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v4, v22

    move-object/from16 v31, v5

    new-array v5, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v3, v5, v22

    const-string v3, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v10, v3, v14, v4, v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xc

    invoke-interface {v0, v1, v3, v10, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/16 v4, 0x1000

    goto :goto_2

    :pswitch_5
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    const/16 v3, 0xc

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lio/branch/search/internal/ui/UISkeletonResolver;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v10, 0x1

    new-array v14, v10, [Lkotlin/reflect/KClass;

    const-class v18, Lio/branch/search/internal/ui/UISkeletonResolver$Default;

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    const/16 v22, 0x0

    aput-object v18, v14, v22

    new-array v3, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;->INSTANCE:Lio/branch/search/internal/ui/UISkeletonResolver$Default$$serializer;

    aput-object v10, v3, v22

    const-string v10, "io.branch.search.internal.ui.UISkeletonResolver"

    invoke-direct {v4, v10, v5, v14, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xb

    invoke-interface {v0, v1, v3, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lio/branch/search/internal/ui/UISkeletonResolver;

    const/16 v4, 0x800

    :goto_2
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    goto :goto_3

    :pswitch_6
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    const/16 v3, 0xb

    new-instance v4, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lio/branch/search/CompositeZeroStateMode;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v10, 0x2

    new-array v14, v10, [Lkotlin/reflect/KClass;

    const-class v19, Lio/branch/search/CompositeZeroStateMode$Local;

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v19

    const/16 v22, 0x0

    aput-object v19, v14, v22

    const-class v19, Lio/branch/search/CompositeZeroStateMode$Remote;

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v19

    const/16 v21, 0x1

    aput-object v19, v14, v21

    new-array v3, v10, [Lkotlinx/serialization/KSerializer;

    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    move-object/from16 v32, v6

    sget-object v6, Lio/branch/search/CompositeZeroStateMode$Local;->a:Lio/branch/search/CompositeZeroStateMode$Local;

    move-object/from16 v33, v7

    const-string v7, "Local"

    invoke-direct {v10, v7, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v10, v3, v22

    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v7, Lio/branch/search/CompositeZeroStateMode$Remote;->a:Lio/branch/search/CompositeZeroStateMode$Remote;

    const-string v10, "Remote"

    invoke-direct {v6, v10, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v6, v3, v21

    const-string v6, "io.branch.search.CompositeZeroStateMode"

    invoke-direct {v4, v6, v5, v14, v3}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lio/branch/search/CompositeZeroStateMode;

    const/16 v4, 0x400

    :goto_3
    move-object/from16 v17, v12

    const/4 v3, 0x0

    const/16 v5, 0x9

    goto :goto_4

    :pswitch_7
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/16 v3, 0xa

    new-instance v4, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v5, Lio/branch/search/KNetworkUsageCappingRule$$serializer;->INSTANCE:Lio/branch/search/KNetworkUsageCappingRule$$serializer;

    invoke-direct {v4, v5}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/16 v5, 0x9

    invoke-interface {v0, v1, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v4, 0x200

    move-object/from16 v17, v12

    const/4 v3, 0x0

    :goto_4
    const/16 v6, 0x8

    goto :goto_5

    :pswitch_8
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/16 v3, 0xa

    const/16 v5, 0x9

    new-instance v4, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v4, v6, v6}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v6, 0x8

    invoke-interface {v0, v1, v6, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/Map;

    const/16 v4, 0x100

    move-object/from16 v17, v12

    const/4 v3, 0x0

    :goto_5
    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v14, 0x4

    move-object v12, v8

    move-object v8, v2

    move v2, v4

    const/4 v4, 0x7

    goto/16 :goto_8

    :pswitch_9
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x80

    move-object/from16 v31, v7

    move-object/from16 v17, v12

    const/4 v3, 0x0

    :goto_6
    const/4 v7, 0x6

    const/4 v14, 0x4

    move-object v12, v8

    move-object v8, v2

    move v2, v10

    const/4 v10, 0x5

    goto/16 :goto_8

    :pswitch_a
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v10

    const/16 v14, 0x40

    move/from16 v28, v10

    move-object/from16 v17, v12

    const/4 v3, 0x0

    :goto_7
    const/4 v10, 0x5

    move-object v12, v8

    move-object v8, v2

    move v2, v14

    const/4 v14, 0x4

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v10, 0x5

    invoke-interface {v0, v1, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v14

    const/16 v20, 0x20

    move-object/from16 v17, v12

    move/from16 v27, v14

    const/4 v3, 0x0

    const/4 v14, 0x4

    move-object v12, v8

    move-object v8, v2

    move/from16 v2, v20

    goto/16 :goto_8

    :pswitch_c
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v14, 0x4

    invoke-interface {v0, v1, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v20

    move-object/from16 v17, v12

    move/from16 v26, v20

    const/4 v3, 0x0

    move-object v12, v8

    move-object v8, v2

    const/16 v2, 0x10

    goto/16 :goto_8

    :pswitch_d
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v3, 0x3

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v14, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v17

    move/from16 v25, v17

    const/4 v3, 0x0

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v2

    move v2, v6

    goto/16 :goto_8

    :pswitch_e
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v3, 0x2

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v14, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v17

    move/from16 v24, v17

    const/4 v3, 0x0

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v2

    move v2, v14

    goto :goto_8

    :pswitch_f
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v14, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v12

    const/4 v3, 0x0

    move-object v12, v8

    move-object v8, v2

    const/4 v2, 0x2

    goto :goto_8

    :pswitch_10
    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x6

    const/4 v10, 0x5

    const/4 v14, 0x4

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v29, v17

    move-object/from16 v17, v12

    move-object v12, v8

    move-object v8, v2

    const/4 v2, 0x1

    :goto_8
    or-int/2addr v15, v2

    move-object v2, v8

    move-object v8, v12

    move-object/from16 v12, v17

    move-object/from16 v3, v29

    move/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    const/16 v10, 0x10

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v45, v2

    move-object/from16 v48, v8

    move-object/from16 v47, v9

    move-object/from16 v44, v11

    move-object/from16 v51, v12

    move-object/from16 v46, v13

    move/from16 v35, v15

    move-object/from16 v37, v16

    move/from16 v38, v24

    move/from16 v39, v25

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v28

    move-object/from16 v36, v29

    move/from16 v50, v30

    move-object/from16 v43, v31

    move-object/from16 v52, v32

    move-object/from16 v49, v33

    :goto_9
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v0, Lio/branch/search/KBranchRemoteConfiguration;

    move-object/from16 v34, v0

    const/16 v53, 0x0

    invoke-direct/range {v34 .. v53}, Lio/branch/search/KBranchRemoteConfiguration;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Lio/branch/search/CompositeZeroStateMode;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
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

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->$$serialDesc:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lio/branch/search/KBranchRemoteConfiguration;->a(Lio/branch/search/KBranchRemoteConfiguration;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/KBranchRemoteConfiguration$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lio/branch/search/KBranchRemoteConfiguration;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
