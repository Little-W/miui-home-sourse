.class Lcom/miui/home/launcher/Workspace$22;
.super Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 3798
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoadingFinished()V
    .locals 5

    .line 3801
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getTransformationType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3802
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3803
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/Workspace;->access$2002(Lcom/miui/home/launcher/Workspace;I)I

    goto :goto_0

    .line 3805
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Workspace;->setScreenTransitionType(I)I

    .line 3807
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$200(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    const/4 v0, 0x0

    move v1, v0

    .line 3808
    :goto_1
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3809
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreenIdByIndex(I)J

    move-result-wide v2

    .line 3810
    iget-object v4, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v4, v2, v3}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3811
    iget-object v2, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3814
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Workspace$22;->this$0:Lcom/miui/home/launcher/Workspace;

    iget-object p0, p0, Lcom/miui/home/launcher/Workspace;->mCurrentIndexMediator:Lcom/miui/home/launcher/common/CurrentIndexMediator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/CurrentIndexMediator;->onCreate()V

    return-void
.end method
