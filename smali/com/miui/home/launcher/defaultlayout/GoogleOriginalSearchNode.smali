.class public final Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "GoogleOriginalSearchNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 21
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 20
    invoke-static {v2, v3, v0, v1, v4}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addGoogleOriginalSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;IILandroid/appwidget/AppWidgetHost;)J

    .line 22
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
