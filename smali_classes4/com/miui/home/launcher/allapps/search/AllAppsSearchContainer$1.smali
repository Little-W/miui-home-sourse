.class Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;
.super Ljava/lang/Object;
.source "AllAppsSearchContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;
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

    .line 86
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {p1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;->this$0:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->access$000(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    :cond_0
    return-void
.end method
