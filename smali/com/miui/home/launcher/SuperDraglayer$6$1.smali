.class Lcom/miui/home/launcher/SuperDraglayer$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SuperDraglayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SuperDraglayer$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/SuperDraglayer$6;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SuperDraglayer$6;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$6$1;->this$1:Lcom/miui/home/launcher/SuperDraglayer$6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 648
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$6$1;->this$1:Lcom/miui/home/launcher/SuperDraglayer$6;

    iget-object p1, p1, Lcom/miui/home/launcher/SuperDraglayer$6;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$6$1;->this$1:Lcom/miui/home/launcher/SuperDraglayer$6;

    iget-object v0, v0, Lcom/miui/home/launcher/SuperDraglayer$6;->val$maskView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/SuperDraglayer;->removeView(Landroid/view/View;)V

    return-void
.end method
