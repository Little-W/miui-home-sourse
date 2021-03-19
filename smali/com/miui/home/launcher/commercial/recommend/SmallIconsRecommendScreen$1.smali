.class Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmallIconsRecommendScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->showOrHideRecommendScreenInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$1;->this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 163
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
