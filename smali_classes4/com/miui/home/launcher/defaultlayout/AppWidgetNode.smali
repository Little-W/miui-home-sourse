.class public final Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "AppWidgetNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppWidgetNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppWidgetNode.kt\ncom/miui/home/launcher/defaultlayout/AppWidgetNode\n*L\n1#1,70:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetHost;)V
    .locals 10

    const/16 v2, 0xc

    .line 41
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 42
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    if-nez v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/16 v5, 0x12

    .line 47
    invoke-virtual {p3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v7, 0x13

    .line 48
    invoke-virtual {p3, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 50
    new-instance v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;-><init>(I)V

    const/16 v8, 0xd

    .line 51
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->pickerID:Ljava/lang/String;

    const/16 v8, 0x3f3

    .line 52
    iput v8, v7, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->addSource:I

    .line 53
    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getExtraIntentParams()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "info.extraIntentParams"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v7, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "intent"

    invoke-virtual {p2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->obtainValidItemFlags(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "itemFlags"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, v4

    move-object v4, p4

    move-object v8, p5

    .line 57
    invoke-static/range {v0 .. v9}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;IILandroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/os/Bundle;)J

    :cond_5
    :goto_4
    return-void
.end method

.method private final obtainValidItemFlags(Landroid/content/res/TypedArray;)I
    .locals 1

    const/4 p0, -0x1

    const/16 v0, 0x8

    .line 63
    invoke-virtual {p1, v0, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/16 p1, 0x40

    :cond_0
    return p1
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 25
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v6

    move-object v1, p0

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetHost;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/AppWidgetNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
