.class Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;
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

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 179
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen$2;->this$0:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->setVisibility(I)V

    .line 180
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/common/messages/FolderRecommendScreenAnimStateMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
