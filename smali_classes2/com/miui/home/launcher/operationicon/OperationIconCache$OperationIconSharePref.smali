.class final Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;
.super Lcom/miui/home/launcher/common/BaseSharePreference;
.source "OperationIconCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/operationicon/OperationIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationIconSharePref"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationIconCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,316:1\n181#2,2:317\n1819#3,2:319\n*E\n*S KotlinDebug\n*F\n+ 1 OperationIconCache.kt\ncom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref\n*L\n139#1,2:317\n139#1,2:319\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref$Companion;


# instance fields
.field private gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "operation_icon_sp"

    .line 131
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/BaseSharePreference;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final getAllOperationIcon()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/operationicon/OperationIconInfo;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    new-instance v1, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v1}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->getAll()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 317
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    sget-object v5, Lcom/miui/home/launcher/operationicon/OperationIconManager;->Companion:Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mosh"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v1}, Lcom/miui/home/launcher/operationicon/OperationIconManager$Companion;->generateIconInfo(Ljava/lang/String;Lcom/squareup/moshi/Moshi;)Lcom/miui/home/launcher/operationicon/OperationIconInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {v3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v3}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->updateDeepLinkIntent()V

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 157
    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    .line 319
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public final save(Lcom/miui/home/launcher/operationicon/OperationIconInfo;)V
    .locals 2

    const-string v0, "iconInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/miui/home/launcher/operationicon/OperationIconInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/operationicon/OperationIconCache$OperationIconSharePref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save icon sp error="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OperationIconCache"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :cond_0
    :goto_0
    return-void
.end method
