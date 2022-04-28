.class public final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mAnimListener$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "NoWordSwitchAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "toTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 60
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    invoke-static {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMScheduledWorkspaceDisappearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lmiuix/animation/property/FloatProperty<",
            "*>;FZ)V"
        }
    .end annotation

    const-string p3, "toTag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 53
    sget-object p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMAnimEndAction$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 54
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Runnable;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$setMAnimEndAction$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
