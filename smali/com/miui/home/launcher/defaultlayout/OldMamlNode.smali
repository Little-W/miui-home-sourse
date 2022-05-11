.class public final Lcom/miui/home/launcher/defaultlayout/OldMamlNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "OldMamlNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOldMamlNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OldMamlNode.kt\ncom/miui/home/launcher/defaultlayout/OldMamlNode\n*L\n1#1,38:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 19
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/OldMamlNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 20
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/OldMamlNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/OldMamlNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addMtzGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)J

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/OldMamlNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
