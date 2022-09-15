.class public final Lcom/miui/home/launcher/defaultlayout/FolderNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "FolderNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V
    .locals 1

    const/16 v0, 0x11

    .line 23
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 18
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/FolderNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/FolderNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/defaultlayout/FolderNode;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/FolderNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
