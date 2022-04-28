.class Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$3;
.super Ljava/lang/Object;
.source "AllAppsSearchContainer.java"

# interfaces
.implements Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateRecommendAppsInMaskView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$3;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "AllAppsSearchContainer"

    const-string v1, "onClick: Local_Apps_Click: 2"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 141
    invoke-static {v0}, Lcom/miui/privacy/track/SensorsAnalyticsCollector;->trackLocalAppsClick(I)V

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$3;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->access$000(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->branchOrMaskLocalAppClick(Landroid/view/View;)V

    return-void
.end method

.method public onAppLongClick(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$3;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->access$000(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->onLongClick(Landroid/view/View;)Z

    return-void
.end method
