.class public final Lcom/miui/home/launcher/folder/AppPredictHelperKt;
.super Ljava/lang/Object;
.source "AppPredictHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppPredictHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppPredictHelper.kt\ncom/miui/home/launcher/folder/AppPredictHelperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n1828#2,3:193\n*E\n*S KotlinDebug\n*F\n+ 1 AppPredictHelper.kt\ncom/miui/home/launcher/folder/AppPredictHelperKt\n*L\n180#1,3:193\n*E\n"
.end annotation


# direct methods
.method public static final isListChanged(Ljava/util/List;Ljava/util/List;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 182
    check-cast p0, Ljava/lang/Iterable;

    .line 194
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-le v1, p2, :cond_1

    return v0

    :cond_1
    const/4 v4, 0x1

    if-eqz p1, :cond_3

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v3, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v0
.end method
