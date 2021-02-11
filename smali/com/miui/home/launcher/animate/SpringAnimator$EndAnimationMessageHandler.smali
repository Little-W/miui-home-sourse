.class Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;
.super Ljava/lang/Object;
.source "SpringAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/animate/SpringAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAnimationMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/animate/SpringAnimator;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/animate/SpringAnimator;Lcom/miui/home/launcher/animate/SpringAnimator$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;-><init>(Lcom/miui/home/launcher/animate/SpringAnimator;)V

    return-void
.end method


# virtual methods
.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/EndSpringAnimatorMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/animate/SpringAnimator$EndAnimationMessageHandler;->this$0:Lcom/miui/home/launcher/animate/SpringAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->skipToEnd()V

    return-void
.end method
