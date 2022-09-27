.class Lcom/miui/home/launcher/Background$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Background.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Background$1;->onLoadingFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Background$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Background$1;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/miui/home/launcher/Background$1$2;->this$1:Lcom/miui/home/launcher/Background$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 165
    iget-object p1, p0, Lcom/miui/home/launcher/Background$1$2;->this$1:Lcom/miui/home/launcher/Background$1;

    iget-object p1, p1, Lcom/miui/home/launcher/Background$1;->this$0:Lcom/miui/home/launcher/Background;

    invoke-static {p1}, Lcom/miui/home/launcher/Background;->access$500(Lcom/miui/home/launcher/Background;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
