.class Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "MIUIWidgetAddAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->start(Lcom/miui/home/launcher/CellLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 103
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/listener/UpdateInfo;

    .line 108
    iget-object p2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->setRadius(D)V

    .line 109
    iget-object p2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    iget-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    double-to-float v0, v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->access$000(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;F)V

    const-string p2, "WidgetAddAnimator"

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInfo.getFloatValue() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string p2, "WidgetAddAnimator"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInfo.velocity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-boolean p1, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-static {p1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->access$100(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
