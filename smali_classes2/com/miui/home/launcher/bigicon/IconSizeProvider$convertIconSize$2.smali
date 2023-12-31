.class final Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;
.super Ljava/lang/Object;
.source "IconSizeProvider.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/bigicon/IconSizeProvider;->convertIconSize(Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/Map$Entry<",
        "+",
        "Landroid/content/ComponentName;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconSizeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconSizeProvider.kt\ncom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2\n*L\n1#1,190:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $iconSize:Ljava/lang/String;

.field final synthetic $isDefaultIcon:Z

.field final synthetic $mode:Ljava/lang/String;

.field final synthetic $needToConVert:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $productId:Ljava/lang/String;

.field final synthetic $shortcutInfosToConvert:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/miui/home/launcher/bigicon/IconSizeProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/bigicon/IconSizeProvider;Lkotlin/jvm/internal/Ref$BooleanRef;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->this$0:Lcom/miui/home/launcher/bigicon/IconSizeProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$needToConVert:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p3, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$isDefaultIcon:Z

    iput-object p4, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$iconSize:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$productId:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$mode:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$shortcutInfosToConvert:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->accept(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public final accept(Ljava/util/Map$Entry;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/content/ComponentName;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$needToConVert:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x0

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 100
    iget-boolean v2, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$isDefaultIcon:Z

    if-nez v2, :cond_4

    .line 101
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "entry.key.packageName"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "entry.key.className"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const-string v1, "Process.myUserHandle()"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$iconSize:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$iconSize:Ljava/lang/String;

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v8, "x"

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    if-eqz v1, :cond_3

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 104
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$iconSize:Ljava/lang/String;

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$productId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->this$0:Lcom/miui/home/launcher/bigicon/IconSizeProvider;

    invoke-virtual {v1}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "context!!"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 101
    invoke-static/range {v2 .. v9}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getDisplayBigIconDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;IILjava/lang/String;Landroid/content/Context;Lcom/miui/home/launcher/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activityName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " iconSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$iconSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " productId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$mode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isDefault = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$isDefaultIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " drawable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IconSizeProvider"

    .line 106
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v2, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$isDefaultIcon:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$isDefaultIcon:Z

    if-eqz v2, :cond_8

    .line 112
    :cond_6
    iget-object v2, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$shortcutInfosToConvert:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const-string v3, "Application.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    .line 114
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iget-boolean p0, p0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;->$isDefaultIcon:Z

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, p1, v0}, Lcom/miui/home/launcher/IconCache;->updateBigIcons(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-void
.end method
