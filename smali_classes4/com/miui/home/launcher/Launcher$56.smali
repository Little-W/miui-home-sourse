.class Lcom/miui/home/launcher/Launcher$56;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->addNewInstallIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/miui/launcher/common/AppUsageStat;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$newInstalledShortcutInfos:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)V
    .locals 0

    .line 6612
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$56;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$56;->val$newInstalledShortcutInfos:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6612
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$56;->apply(Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Void;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    .line 6615
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$56;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$1400(Lcom/miui/home/launcher/Launcher;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$56;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$56;->val$newInstalledShortcutInfos:Ljava/util/HashSet;

    invoke-static {v2, p0}, Lcom/miui/home/launcher/Launcher;->access$7500(Lcom/miui/home/launcher/Launcher;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStats(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
