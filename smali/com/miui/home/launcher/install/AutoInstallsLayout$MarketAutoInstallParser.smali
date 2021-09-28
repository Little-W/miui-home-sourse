.class Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;
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
    name = "MarketAutoInstallParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-object p2, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 9

    const-string v0, "packageName"

    .line 671
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    const/4 v1, 0x0

    .line 674
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v3, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$700(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 678
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    iget-object v0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10019f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v7, -0x1

    if-nez v3, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v3, "icon"

    .line 689
    invoke-static {p1, v3, v1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$600(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "icon"

    .line 693
    invoke-static {p1, v3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 694
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "AutoInstalls"

    const-string p2, "Ignoring shortcut, can\'t get icon from name"

    .line 695
    return-wide v7

    :cond_3
    const/16 v3, 0x3a

    .line 698
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 700
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "AutoInstalls"

    const-string p2, "Ignoring shortcut, can\'t load icon from resource"

    .line 702
    return-wide v7

    .line 705
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 706
    iget-object v4, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    :try_start_0
    const-string v4, "spanX"

    const/4 v5, 0x1

    .line 709
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    .line 710
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "itemType"

    const/16 v6, 0x11

    .line 711
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconType"

    .line 712
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconResource"

    .line 713
    invoke-virtual {p3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconPackage"

    .line 714
    invoke-virtual {p3, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 715
    invoke-virtual {p3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "pkgName"

    .line 717
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intent"

    .line 718
    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "app_state_db_need_init"

    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 722
    iget-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 723
    new-instance p1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v3, ""

    const/16 v4, 0x40

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 724
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V

    :cond_6
    const-string p1, "favorites"

    const/4 v0, 0x0

    .line 727
    invoke-static {p2, p1, v0, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    const-string p2, "AutoInstalls"

    .line 729
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-wide v7

    :cond_7
    :goto_2
    return-wide v7
.end method
