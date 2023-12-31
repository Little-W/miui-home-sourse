.class Lcom/miui/home/launcher/folme/FolmeUtils$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolmeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folme/FolmeUtils;->hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hideAnimEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$showAnimConfig:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$hideAnimEndRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$showAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$hideAnimEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 57
    iget-object p1, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/folme/FolmeUtils;->access$000()Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/folme/FolmeUtils$1;->val$showAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, p1, v2

    invoke-interface {v0, v1, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
