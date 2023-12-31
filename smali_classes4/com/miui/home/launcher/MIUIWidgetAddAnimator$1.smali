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

    if-eqz p2, :cond_1

    .line 103
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/listener/UpdateInfo;

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateInfo.getFloatValue() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WidgetAddAnimator"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInfo.velocity = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-static {p2}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->access$000(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 114
    iget-object p2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->setRadius(D)V

    .line 115
    iget-object p2, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    iget-wide v0, p1, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    double-to-float v0, v0

    invoke-static {p2, v0}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->access$100(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;F)V

    .line 116
    iget-boolean p1, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p1, :cond_1

    .line 117
    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetAddAnimator$1;->this$0:Lcom/miui/home/launcher/MIUIWidgetAddAnimator;

    invoke-static {p0}, Lcom/miui/home/launcher/MIUIWidgetAddAnimator;->access$200(Lcom/miui/home/launcher/MIUIWidgetAddAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method
