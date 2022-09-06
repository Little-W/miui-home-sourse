.class public final Lcom/miui/home/launcher/defaultlayout/IncludeNode;
.super Lcom/miui/home/launcher/defaultlayout/Node;
.source "IncludeNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getParser()Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const-string v1, "layout"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;

    invoke-direct {v1}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;-><init>()V

    new-instance v2, Lcom/miui/home/launcher/defaultlayout/DefaultContext;

    .line 12
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMContext()Landroid/content/Context;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v5

    .line 11
    invoke-direct {v2, v3, v0, v4, v5}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;-><init>(Landroid/database/sqlite/SQLiteDatabase;ILandroid/content/Context;Landroid/appwidget/AppWidgetHost;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/defaultlayout/FavoritesNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/IncludeNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
