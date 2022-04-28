.class Lcom/miui/home/launcher/SuperDraglayer$6;
.super Ljava/lang/Object;
.source "SuperDraglayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SuperDraglayer;->highlightLocatedApp(Lcom/miui/home/launcher/ItemIcon;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;

.field final synthetic val$maskView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$6;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer$6;->val$maskView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$6;->val$maskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/SuperDraglayer$6;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    .line 653
    invoke-virtual {v1}, Lcom/miui/home/launcher/SuperDraglayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 654
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/SuperDraglayer$6$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/SuperDraglayer$6$1;-><init>(Lcom/miui/home/launcher/SuperDraglayer$6;)V

    .line 655
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
