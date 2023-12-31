.class Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;
.super Ljava/lang/Object;
.source "FolderCling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderCling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateFolderPaddingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V
    .locals 0

    .line 518
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    .line 525
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->getMessage()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x172

    if-eq p1, v3, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    move p0, v2

    move p1, p0

    goto/16 :goto_2

    .line 557
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 558
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v1

    .line 559
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3, v2}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v3

    .line 560
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7}, Lcom/miui/home/launcher/FolderCling;->access$800(Lcom/miui/home/launcher/FolderCling;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 561
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7, v2}, Lcom/miui/home/launcher/FolderCling;->access$900(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 562
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$1000(Lcom/miui/home/launcher/FolderCling;)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 563
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 564
    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 565
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->exitEditState()V

    move v2, p1

    move p1, v1

    goto :goto_0

    .line 547
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v2}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v2

    .line 548
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 549
    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v3, v1}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v3

    .line 550
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7}, Lcom/miui/home/launcher/FolderCling;->access$800(Lcom/miui/home/launcher/FolderCling;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 551
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7, v1}, Lcom/miui/home/launcher/FolderCling;->access$900(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 552
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$1000(Lcom/miui/home/launcher/FolderCling;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 553
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 554
    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    move p0, v3

    goto/16 :goto_2

    .line 537
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v2}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v2

    .line 538
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 539
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p0

    goto :goto_2

    .line 542
    :cond_4
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 543
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v1

    .line 544
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v2

    move p0, v2

    move v2, p1

    move p1, v1

    goto :goto_2

    .line 531
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    .line 532
    :goto_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v2

    .line 533
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 534
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p0

    .line 568
    :goto_2
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setFolderBackgroundViewPaddingTop(I)V

    .line 569
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Folder;->setFolderHeaderPaddingBottom(I)V

    .line 570
    invoke-static {v0, v2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method
