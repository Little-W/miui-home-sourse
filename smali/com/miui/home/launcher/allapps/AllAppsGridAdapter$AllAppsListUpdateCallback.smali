.class Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;
.super Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllAppsListUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    .line 454
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method protected afterNotifyData()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->afterNotifyData()V

    return-void
.end method

.method protected beforeNotifyData()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->beforeNotifyData()V

    return-void
.end method

.method protected isAnimEnable()Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    iget-boolean v0, v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isColorSelecting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
