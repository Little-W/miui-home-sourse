.class public final Lcom/miui/home/launcher/bigicon/IconSizeProvider;
.super Landroid/content/ContentProvider;
.source "IconSizeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/bigicon/IconSizeProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconSizeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconSizeProvider.kt\ncom/miui/home/launcher/bigicon/IconSizeProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n734#2:191\n825#2,2:192\n*E\n*S KotlinDebug\n*F\n+ 1 IconSizeProvider.kt\ncom/miui/home/launcher/bigicon/IconSizeProvider\n*L\n96#1:191\n96#1,2:192\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/bigicon/IconSizeProvider$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/bigicon/IconSizeProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/bigicon/IconSizeProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->Companion:Lcom/miui/home/launcher/bigicon/IconSizeProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private final convertIconSize(Landroid/os/Bundle;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->isParameterQualified(Landroid/os/Bundle;)Z

    move-result v2

    const/4 v8, 0x0

    if-nez v2, :cond_0

    return v8

    :cond_0
    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v2, "isDefault"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v2, "1x1"

    goto :goto_0

    :cond_2
    const-string v2, "iconSize"

    .line 83
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v10, v2

    const-string v2, "productId"

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    const-string v3, "LauncherModeController.getCurrentMode()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-direct {v1, v10}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->isIconSizeQualified(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSizeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    const-string v2, "relativePackageList"

    .line 91
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string v2, "extras.getStringArrayList(RELATIVE_PACKAGE_LIST)!!"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getShortcutToConvert(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 93
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v8, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 192
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v1, v9, v4}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->needToConvert(ZLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_6
    move-object v14, v2

    check-cast v14, Ljava/util/List;

    .line 97
    new-instance v15, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/bigicon/IconSizeProvider$convertIconSize$2;-><init>(Lcom/miui/home/launcher/bigicon/IconSizeProvider;Lkotlin/jvm/internal/Ref$BooleanRef;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    check-cast v15, Ljava/util/function/Consumer;

    invoke-interface {v14, v15}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iget-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return v8

    .line 120
    :cond_7
    iget-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 124
    :cond_8
    new-instance v0, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;

    invoke-direct {v0}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;-><init>()V

    .line 125
    check-cast v12, Ljava/util/List;

    .line 124
    invoke-virtual {v0, v12, v10, v11, v9}, Lcom/miui/home/launcher/bigicon/BigIconConvertSizeController;->convertAppIconSize(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_9
    return v8
.end method

.method private final getIconLocation(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->isParameterQualified(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 156
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string p0, "relativePackageList"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string p1, "extras!!.getStringArrayL\u2026(RELATIVE_PACKAGE_LIST)!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getAllShortcutLocation(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getIconLocation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconSizeProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private final isIconSizeQualified(Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "x"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, p0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method private final isParameterQualified(Landroid/os/Bundle;)Z
    .locals 3

    const/4 p0, 0x0

    const-string v0, "IconSizeProvider"

    if-nez p1, :cond_0

    const-string p1, "extras = null"

    .line 164
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const-string v1, "relativePackageList"

    .line 167
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "relatePackageList = null"

    .line 168
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 171
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relatePackageList="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private final needToConvert(ZLjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 141
    :cond_0
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 142
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget v2, v2, Lcom/miui/home/launcher/ShortcutInfo;->mIconType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " componentName = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " no need convert"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconSizeProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "authority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSizeProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->isSupportBigIcon()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "convertIconSize"

    .line 56
    check-cast v1, Ljava/lang/CharSequence;

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->convertIconSize(Landroid/os/Bundle;)Z

    move-result p0

    const-string p1, "conversionSucceeded"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    const-string v1, "getIconLocation"

    .line 60
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/bigicon/IconSizeProvider;->getIconLocation(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/io/Serializable;

    const-string p1, "allIconLocation"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0

    :cond_2
    const-string v1, "supportLargeIcon"

    .line 66
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p0, 0x1

    .line 67
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->getCurrentMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    const-string p1, "LauncherModeController.getCurrentMode()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/LauncherMode;->getModeName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "launcherMode"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const-string v1, "getResourceInUse"

    .line 71
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    sget-object p0, Lcom/miui/home/launcher/bigicon/BigIconUtil;->INSTANCE:Lcom/miui/home/launcher/bigicon/BigIconUtil;

    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigIconUtil;->getResourceInUse()Ljava/lang/String;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
