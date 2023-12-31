.class Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;
.super Ljava/lang/Object;
.source "BaseAutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "title"

    const/4 v3, 0x0

    .line 405
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v4

    const-wide/16 v5, -0x1

    const-string v7, "AutoInstalls"

    if-nez v4, :cond_0

    .line 408
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "Ignoring shortcut, can\'t get title"

    .line 410
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5

    .line 414
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v14, v2

    const-string v2, "icon"

    .line 417
    invoke-static {v1, v2, v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    .line 421
    invoke-static {v1, v2}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "iconResource"

    .line 423
    invoke-static {v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Ignoring shortcut, can\'t get icon from name"

    .line 426
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5

    :cond_3
    const/16 v2, 0x3a

    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v12, v0

    move-object v13, v2

    goto :goto_0

    .line 431
    :cond_4
    iget-object v2, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v0, "Ignoring shortcut, can\'t load icon from resource"

    .line 433
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5

    .line 436
    :cond_5
    iget-object v2, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v0, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object v12, v2

    :goto_0
    const-string v0, "packageName"

    .line 439
    invoke-static {v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "className"

    .line 440
    invoke-static {v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "action"

    .line 441
    invoke-static {v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "url"

    .line 442
    invoke-static {v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "retained"

    .line 443
    invoke-static {v1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 444
    invoke-static/range {v8 .. v17}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method
