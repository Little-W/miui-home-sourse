.class Lcom/miui/home/launcher/Launcher$5;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->checkNewInstalledAppsBeStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Launcher$5$_lancet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/miui/launcher/common/AppUsageStat;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$packages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$5;->val$packages:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1556
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher$5;->doInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$5;->val$packages:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStats(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1556
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$5;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;)V"
        }
    .end annotation

    .line 1564
    invoke-static {p1}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1565
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1566
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v2}, Lcom/miui/home/launcher/Launcher;->access$1000(Lcom/miui/home/launcher/Launcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1567
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1568
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1569
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/launcher/common/AppUsageStat;

    .line 1570
    invoke-virtual {v4}, Lcom/miui/launcher/common/AppUsageStat;->getLastUsedTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v6}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1571
    iget-object v4, p0, Lcom/miui/home/launcher/Launcher$5;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutInfo;->onLaunch(Lcom/miui/home/launcher/Launcher;)V

    const-string v2, "Launcher"

    .line 1572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", has been opened, remove its new installed indicator"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/Launcher$5$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
