.class Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;
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
    name = "MarketAutoInstallParser"
.end annotation


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 9

    const-string v0, "packageName"

    .line 713
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    const/4 v1, 0x0

    .line 716
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v3, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "title"

    .line 720
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    iget-object v0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1101f6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
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

    .line 731
    invoke-static {p1, v3, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "icon"

    .line 735
    invoke-static {p1, v3}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "AutoInstalls"

    const-string p2, "Ignoring shortcut, can\'t get icon from name"

    .line 737
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    :cond_3
    const/16 v3, 0x3a

    .line 740
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 742
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "AutoInstalls"

    const-string p2, "Ignoring shortcut, can\'t load icon from resource"

    .line 744
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    .line 747
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 748
    iget-object v4, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    :try_start_0
    const-string v4, "spanX"

    const/4 v5, 0x1

    .line 751
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    .line 752
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "itemType"

    const/16 v6, 0x11

    .line 753
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconType"

    .line 754
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconResource"

    .line 755
    invoke-virtual {p3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconPackage"

    .line 756
    invoke-virtual {p3, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 757
    invoke-virtual {p3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "pkgName"

    .line 759
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intent"

    .line 760
    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "app_state_db_need_init"

    invoke-static {p1, v0, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 764
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object p1, p1, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 765
    new-instance p1, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v3, ""

    const/16 v4, 0x40

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 766
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V

    :cond_6
    const-string p1, "favorites"

    const/4 v0, 0x0

    .line 769
    invoke-static {p2, p1, v0, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    const-string p2, "AutoInstalls"

    .line 771
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert error:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    :cond_7
    :goto_2
    return-wide v7
.end method
