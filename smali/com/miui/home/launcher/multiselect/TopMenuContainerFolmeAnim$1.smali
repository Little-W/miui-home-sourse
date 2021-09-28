.class Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;
.super Ljava/lang/Object;
.source "TopMenuContainerFolmeAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->changeStateWithAnim(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

.field final synthetic val$newState:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field final synthetic val$oldState:Lcom/miui/home/launcher/multiselect/TopMenuState;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iput-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$oldState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    iput-object p3, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$newState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$oldState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$newState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->changeColor(Lcom/miui/home/launcher/multiselect/TopMenuState;Lcom/miui/home/launcher/multiselect/TopMenuState;)V

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$oldState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$002(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;F)F

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$newState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/multiselect/TopMenuState;->getImageAlphaForFolmeAnim()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$102(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;F)F

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$oldState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v2, v2, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    .line 59
    invoke-static {v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$100(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F

    move-result v2

    new-array v5, v4, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v6, v5, v3

    invoke-interface {v1, v2, v5}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v2, v4, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v2, v3

    .line 61
    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->val$newState:Lcom/miui/home/launcher/multiselect/TopMenuState;

    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v2, v2, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->getGoneState()Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 63
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 64
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v2, v4, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v2, v3

    .line 65
    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IStateStyle;->cancel()V

    .line 68
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v2, "animState"

    invoke-direct {v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    iget-object v5, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    .line 69
    invoke-static {v5}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$100(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$300(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-array v4, v4, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v4, v3

    invoke-interface {v2, v1, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method
