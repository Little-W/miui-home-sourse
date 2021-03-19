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

    .line 527
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V
    .locals 0

    .line 527
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;)V
    .locals 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    .line 534
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->getMessage()I

    move-result p1

    const/4 v1, 0x5

    const-wide/16 v2, 0x172

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    move p1, v5

    move v1, p1

    goto/16 :goto_1

    .line 557
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v5}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v5

    .line 558
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 559
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v6, v1}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v6

    .line 560
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7}, Lcom/miui/home/launcher/FolderCling;->access$800(Lcom/miui/home/launcher/FolderCling;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 561
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7, v1}, Lcom/miui/home/launcher/FolderCling;->access$900(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 562
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7}, Lcom/miui/home/launcher/FolderCling;->access$1000(Lcom/miui/home/launcher/FolderCling;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 563
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 564
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move v1, v6

    goto/16 :goto_1

    .line 546
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v5}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v5

    .line 547
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 548
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v1

    .line 549
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v2}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/FolderGridView;->setTranslationY(F)V

    goto/16 :goto_1

    .line 552
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 553
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1, v5}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v1

    .line 554
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v2, v5}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v5

    move v8, v5

    move v5, p1

    move p1, v1

    move v1, v8

    goto/16 :goto_1

    .line 540
    :pswitch_3
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 541
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v5

    .line 542
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 543
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1}, Lcom/miui/home/launcher/FolderCling;->access$400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v1

    goto :goto_1

    .line 567
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {p1}, Lcom/miui/home/launcher/FolderCling;->access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/FolderCling;->access$500(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result p1

    .line 568
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v1, v5}, Lcom/miui/home/launcher/FolderCling;->access$600(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v1

    .line 569
    iget-object v6, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v6, v5}, Lcom/miui/home/launcher/FolderCling;->access$700(Lcom/miui/home/launcher/FolderCling;Z)I

    move-result v6

    .line 570
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7}, Lcom/miui/home/launcher/FolderCling;->access$800(Lcom/miui/home/launcher/FolderCling;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/miui/home/launcher/Folder;->setTranslationY(F)V

    .line 571
    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7, v5}, Lcom/miui/home/launcher/FolderCling;->access$900(Lcom/miui/home/launcher/FolderCling;Z)V

    .line 572
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;->this$0:Lcom/miui/home/launcher/FolderCling;

    invoke-static {v7}, Lcom/miui/home/launcher/FolderCling;->access$1000(Lcom/miui/home/launcher/FolderCling;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 573
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 574
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move v5, p1

    move p1, v1

    move v1, v6

    .line 577
    :goto_1
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setFolderBackgroundViewPaddingTop(I)V

    .line 578
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->setFolderHeaderPaddingBottom(I)V

    .line 579
    invoke-static {v0, v5}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
