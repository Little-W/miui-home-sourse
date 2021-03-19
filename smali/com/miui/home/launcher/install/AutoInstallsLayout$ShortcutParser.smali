.class Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "title"

    const/4 v3, 0x0

    .line 379
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, -0x1

    if-nez v2, :cond_1

    const-string v2, "title"

    .line 382
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "AutoInstalls"

    const-string v2, "Ignoring shortcut, can\'t get title"

    .line 384
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_0
    move-object v12, v2

    goto :goto_0

    .line 388
    :cond_1
    iget-object v6, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v6}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$700(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    :goto_0
    const-string v2, "icon"

    .line 391
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "icon"

    .line 395
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v1, "AutoInstalls"

    const-string v2, "Ignoring shortcut, can\'t get icon from name"

    .line 397
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_2
    const/16 v4, 0x3a

    .line 400
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v10, v2

    move-object v11, v3

    goto :goto_1

    .line 402
    :cond_3
    iget-object v3, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v1, "AutoInstalls"

    const-string v2, "Ignoring shortcut, can\'t load icon from resource"

    .line 404
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    .line 407
    :cond_4
    iget-object v3, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    iget-object v4, v0, Lcom/miui/home/launcher/install/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move-object v10, v3

    :goto_1
    const-string v2, "packageName"

    .line 410
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "className"

    .line 411
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "action"

    .line 412
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "url"

    .line 413
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "retained"

    .line 414
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 415
    invoke-static/range {v6 .. v15}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v1

    return-wide v1
.end method
