.class public final Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "AppWidgetNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppWidgetNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppWidgetNode.kt\ncom/miui/home/launcher/defaultlayout/AppWidgetNode\n*L\n1#1,39:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetHost;)V
    .locals 12

    move-object v0, p3

    const/16 v1, 0x9

    .line 26
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 28
    move-object v2, v4

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    move-object v2, v5

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0xe

    .line 32
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/16 v1, 0xf

    .line 33
    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const-string v0, "itemFlags"

    const/16 v1, 0x40

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, p2

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/Context;

    const/4 v11, 0x0

    move-object v2, p1

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    .line 36
    invoke-static/range {v2 .. v11}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J

    return-void

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 21
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetHost;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
