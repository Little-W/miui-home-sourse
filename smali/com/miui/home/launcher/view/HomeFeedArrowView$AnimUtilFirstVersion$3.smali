.class Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeFeedArrowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->initAlphaAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 456
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion$3;->this$1:Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;

    iget-object p1, p1, Lcom/miui/home/launcher/view/HomeFeedArrowView$AnimUtilFirstVersion;->this$0:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->access$1400(Lcom/miui/home/launcher/view/HomeFeedArrowView;)V

    return-void
.end method
