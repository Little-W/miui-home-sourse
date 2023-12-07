.class public final Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager;
.super Ljava/lang/Object;
.source "UpgradeFolderManager.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createJsonObject(IIIIIIZ)Lcom/google/gson/JsonObject;
    .locals 0

    .line 23
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-string p2, "id"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-string p2, "screenId"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 26
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-string p2, "index"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public removeItem(Lcom/google/gson/JsonArray;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/gson/JsonElement;",
            ">;)V"
        }
    .end annotation

    const-string p0, "array"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "removeList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager$removeItem$1;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/upgradelayout/UpgradeFolderManager$removeItem$1;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method
