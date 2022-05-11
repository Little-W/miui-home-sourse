.class public final Lcom/miui/home/launcher/defaultlayout/GadgetNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "GadgetNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)V
    .locals 3

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p3}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    const-string v1, "spanX"

    .line 23
    iget v2, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    .line 24
    iget v0, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "itemType"

    const/4 v1, 0x5

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "appWidgetId"

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "favorites"

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, p3, v0, p2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 17
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/GadgetNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget-object v2, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->INSTANCE:Lcom/miui/home/launcher/defaultlayout/NodeFactory;

    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMCurrentToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/defaultlayout/NodeFactory;->obtainGadgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/defaultlayout/GadgetNode;->addNoMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/GadgetNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
