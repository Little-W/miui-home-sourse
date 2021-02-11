.class Lcom/miui/home/launcher/CellBackground$2;
.super Ljava/lang/Object;
.source "CellBackground.java"

# interfaces
.implements Lcom/miui/home/launcher/AutoLayoutAnimation$AutoLayoutAnimatorAnimateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellBackground;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellBackground;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;II)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {v0}, Lcom/miui/home/launcher/CellBackground;->access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {v0}, Lcom/miui/home/launcher/CellBackground;->access$000(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getLeft()I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationX()F

    move-result v1

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/CellBackground;->setTranslationX(F)V

    .line 90
    iget-object p2, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTop()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-interface {p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->getTranslationY()F

    move-result p1

    add-float/2addr p3, p1

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/CellBackground;->setTranslationY(F)V

    .line 91
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {p1}, Lcom/miui/home/launcher/CellBackground;->access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    iget-object p3, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-virtual {p3}, Lcom/miui/home/launcher/CellBackground;->getAlpha()F

    move-result p3

    const/4 v0, 0x0

    aput p3, p2, v0

    const/4 p3, 0x1

    const/4 v0, 0x0

    aput v0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 92
    iget-object p1, p0, Lcom/miui/home/launcher/CellBackground$2;->this$0:Lcom/miui/home/launcher/CellBackground;

    invoke-static {p1}, Lcom/miui/home/launcher/CellBackground;->access$100(Lcom/miui/home/launcher/CellBackground;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
