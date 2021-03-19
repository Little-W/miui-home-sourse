.class Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;
.super Ljava/lang/Object;
.source "RecommendController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/recommend/RecommendController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderRecommendAnimStateMessageHandler"
.end annotation


# instance fields
.field private mAfterRecommendScreenShowAnimRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRecommendScreenAnimating:Z

.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->this$0:Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 372
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mIsRecommendScreenAnimating:Z

    .line 373
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mAfterRecommendScreenShowAnimRunnables:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;Lcom/miui/home/launcher/commercial/recommend/RecommendController$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;-><init>(Lcom/miui/home/launcher/commercial/recommend/RecommendController;)V

    return-void
.end method


# virtual methods
.method public onBind(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 385
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 386
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 392
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mAfterRecommendScreenShowAnimRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 398
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;->getAnimState()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p1, "RecommendController"

    const-string v0, "FolderRecommendAnimStateMessageHandler, default"

    .line 416
    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mIsRecommendScreenAnimating:Z

    goto :goto_1

    .line 404
    :pswitch_1
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mIsRecommendScreenAnimating:Z

    .line 405
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mAfterRecommendScreenShowAnimRunnables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mAfterRecommendScreenShowAnimRunnables:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 407
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :pswitch_2
    iput-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mIsRecommendScreenAnimating:Z

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public runAfterRecommendScreenShowAnim(Ljava/lang/Runnable;)V
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mIsRecommendScreenAnimating:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/RecommendController$FolderRecommendAnimStateMessageHandler;->mAfterRecommendScreenShowAnimRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
