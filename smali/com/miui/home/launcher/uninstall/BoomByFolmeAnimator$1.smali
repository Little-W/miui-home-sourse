.class Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "BoomByFolmeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onBegin$456(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;)V
    .locals 3

    const/4 v0, 0x1

    .line 147
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IStateStyle;->cancel()V

    const-string v0, "BoomByFolmeAnimator"

    const-string v1, " cancel it"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 3

    const-string p1, "BoomByFolmeAnimator"

    const-string v0, " onBegin"

    .line 145
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$100(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomByFolmeAnimator$1$C6zj7bEVO0TOOLIWugOTkyNApQ0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomByFolmeAnimator$1$C6zj7bEVO0TOOLIWugOTkyNApQ0;-><init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/launcher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    iget-object p1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 151
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$100(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Lcom/miui/home/launcher/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragLayer;->invalidate()V

    return-void
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    const-string p1, "BoomByFolmeAnimator"

    const-string v0, " onCancel"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$202(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Z)Z

    const/4 p1, 0x1

    .line 165
    new-array p1, p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    const-string p1, "BoomByFolmeAnimator"

    const-string v0, " onComplete"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$202(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Z)Z

    const/4 p1, 0x1

    .line 158
    new-array p1, p1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    invoke-static {v1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$300(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {p1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$1;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    iget-object p2, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->mDecelerateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->access$002(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;F)F

    return-void
.end method
