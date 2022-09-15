.class public final Lcom/miui/home/launcher/defaultlayout/ShortcutNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "ShortcutNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method

.method private final addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)V
    .locals 7

    .line 25
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 26
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const/16 v0, 0xa

    .line 28
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "intent.component!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 30
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const-string v2, "intent.component!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const/16 v2, 0xd

    .line 31
    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    if-eqz p3, :cond_4

    move v6, v0

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)J

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

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 20
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ShortcutNode;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
