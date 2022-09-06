.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserPresentAnimationCompatV12Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 93
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    iget v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->mAllAnimationViewNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->mAllAnimationViewNum:I

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    iget p1, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->mAllAnimationViewNum:I

    if-gtz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Phone;->resetAnimationViewNum()V

    const-string p1, "Launcher.UserPresentAnimation"

    const-string v0, "unlock_animation_complete"

    .line 96
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
