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

    .line 792
    iput-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p2, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 11

    const-string v0, "packageName"

    .line 798
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "title"

    const/4 v1, 0x0

    .line 801
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    iget-object v4, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    invoke-static {v4}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$500(Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 805
    :cond_0
    invoke-static {p1, v0}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    iget-object v3, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object v3, v3, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1101f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 812
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v7, -0x1

    if-nez v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "icon"

    .line 816
    invoke-static {p1, v4, v1}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$400(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v5

    const-string v9, "AutoInstalls"

    if-nez v5, :cond_4

    .line 820
    invoke-static {p1, v4}, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 821
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p0, "Ignoring shortcut, can\'t get icon from name"

    .line 822
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    :cond_3
    const/16 v4, 0x3a

    .line 825
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 827
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "Ignoring shortcut, can\'t load icon from resource"

    .line 829
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    .line 832
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 833
    iget-object v4, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    :try_start_0
    const-string v5, "spanX"

    const/4 v6, 0x1

    .line 836
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanY"

    .line 837
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "itemType"

    const/16 v10, 0x11

    .line 838
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "iconType"

    .line 839
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "iconResource"

    .line 840
    invoke-virtual {p3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "iconPackage"

    .line 841
    invoke-virtual {p3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "pkgName"

    .line 844
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "intent"

    .line 845
    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    const-string v0, "app_state_db_need_init"

    invoke-static {p1, v0, v6}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 849
    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout$MarketAutoInstallParser;->this$0:Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;

    iget-object p0, p0, Lcom/miui/home/launcher/install/BaseAutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 850
    new-instance p0, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;

    const-string v3, ""

    const/16 v4, 0x40

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/russia/RussiaPreInstallApp;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 851
    invoke-static {}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->getInstance()Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/russia/RussiaPreInstallAppsRepository;->addItemToDb(Lcom/miui/home/launcher/russia/RussiaPreInstallApp;)V

    :cond_6
    const-string p0, "favorites"

    const/4 p1, 0x0

    .line 854
    invoke-static {p2, p0, p1, p3}, Lcom/miui/home/launcher/LauncherProvider;->safelyInsertDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insert error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-wide v7
.end method
