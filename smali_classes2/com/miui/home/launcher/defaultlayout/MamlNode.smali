.class public final Lcom/miui/home/launcher/defaultlayout/MamlNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "MamlNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final obtainValidItemFlags(Landroid/content/res/TypedArray;)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x6

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20

    :cond_0
    return p1
.end method


# virtual methods
.method public final addMamlWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V
    .locals 5

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typedArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x13

    .line 29
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-direct {v2}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xf

    .line 32
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    const/16 v4, 0x10

    .line 33
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    const/16 v4, 0xc

    .line 34
    invoke-virtual {p3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    const/16 v4, 0x14

    .line 35
    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    const/16 v3, 0x11

    .line 36
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "itemFlags"

    .line 37
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->obtainValidItemFlags(Landroid/content/res/TypedArray;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanX"

    .line 38
    iget v3, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 39
    iget v3, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->configSpanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "itemType"

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "product_id"

    .line 41
    iget-object v0, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "title"

    .line 42
    invoke-virtual {v2}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    iget-object v1, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->productId:Ljava/lang/String;

    iget v3, v2, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->versionCode:I

    .line 44
    invoke-static {p3, v0, v1, v3}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->installMaMlFromExternal(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "uri"

    .line 46
    invoke-static {v2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getMaMlResPath(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "favorites"

    const/4 v0, 0x0

    .line 49
    invoke-static {p1, p3, v0, p2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->addMamlWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/MamlNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
