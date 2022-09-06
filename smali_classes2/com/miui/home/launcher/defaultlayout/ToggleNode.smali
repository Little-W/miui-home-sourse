.class public final Lcom/miui/home/launcher/defaultlayout/ToggleNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "ToggleNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToggleNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToggleNode.kt\ncom/miui/home/launcher/defaultlayout/ToggleNode\n*L\n1#1,39:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final addToggle(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V
    .locals 2

    const/16 v0, 0x14

    .line 29
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "a.getString(R.styleable.\u2026orite_toggleId) ?: return"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ToggleId"

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "intent"

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "itemType"

    const/4 v0, 0x1

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "iconType"

    const/4 v1, 0x3

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanX"

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "spanY"

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "favorites"

    const/4 v0, 0x0

    .line 37
    invoke-static {p1, p3, v0, p2}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 22
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/ToggleNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ToggleNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ToggleNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/defaultlayout/ToggleNode;->addToggle(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ToggleNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
