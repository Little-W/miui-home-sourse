.class public final Lio/branch/search/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/branch/search/KBranchRemoteConfiguration;
    .locals 2

    const-string p0, "remoteConfigJson"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lio/branch/search/v$a$a;->a:Lio/branch/search/v$a$a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    const-class v1, Lio/branch/search/KBranchRemoteConfiguration;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v0, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/KBranchRemoteConfiguration;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V
    .locals 0

    sget-object p0, Lio/branch/search/a5$a;->b:Lio/branch/search/a5$a;

    invoke-static {p1, p0}, Lio/branch/search/a5;->a(Landroid/content/Context;Lio/branch/search/a5$a;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lio/branch/search/KBranchRemoteConfiguration;->a(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "key_historical_overrides"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Landroid/content/Context;Lio/branch/search/l;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "branchSearch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/a5$a;->b:Lio/branch/search/a5$a;

    invoke-static {p1, v0}, Lio/branch/search/a5;->a(Landroid/content/Context;Lio/branch/search/a5$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "BranchSharedPrefs.get(co\u2026refs.Files.remote_config)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_historical_overrides"

    const-string v1, "{}"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "sp.getString(KEY_HISTORICAL_OVERRIDES, \"{}\")!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v$a;->a(Ljava/lang/String;Lio/branch/search/l;)V

    return-void
.end method

.method public final a(Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->t()I

    move-result p0

    invoke-virtual {p2}, Lio/branch/search/KBranchRemoteConfiguration;->t()I

    move-result p2

    if-eq p0, p2, :cond_0

    invoke-virtual {p3}, Lio/branch/search/internal/interfaces/LocalInterface;->c()Lio/branch/search/h2;

    move-result-object p0

    iget-object p0, p0, Lio/branch/search/h2;->e:Lio/branch/search/j2;

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->t()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/j2;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Lio/branch/search/l;)V
    .locals 29

    move-object/from16 v0, p1

    :try_start_0
    iget-object v1, v0, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    if-nez v1, :cond_0

    new-instance v1, Lio/branch/search/KBranchRemoteConfiguration;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x7fffff

    const/16 v28, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v28}, Lio/branch/search/KBranchRemoteConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IIJILio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/internal/ui/UISkeletonResolver;Ljava/util/Map;ZLjava/util/List;Ljava/lang/Integer;Lio/branch/search/internal/control/AllFeatures;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual/range {p1 .. p1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "branchSearch.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    const-string v2, "branchSearch.remoteConfiguration"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lio/branch/search/v$a;->a(Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteConfigInterface.Companion"

    const-string v2, "DestructiveRestore failed"

    invoke-static {v1, v2, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lio/branch/search/l;)V
    .locals 3

    const-string v0, "remoteConfigDelta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "branchSearch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lio/branch/search/v$a;->a(Ljava/lang/String;)Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    iget-object v1, p2, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    iget-object v2, p2, Lio/branch/search/l;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {p0, v0, v1, v2}, Lio/branch/search/v$a;->a(Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/KBranchRemoteConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;)V

    iput-object v0, p2, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p2}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "branchSearch.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p2, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    const-string v2, "branchSearch.remoteConfiguration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lio/branch/search/v$a;->a(Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p2}, Lio/branch/search/v$a;->a(Lio/branch/search/l;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid remote configuration: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteConfigInterface.Companion"

    invoke-static {p1, p0, v0}, Lio/branch/search/f0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
