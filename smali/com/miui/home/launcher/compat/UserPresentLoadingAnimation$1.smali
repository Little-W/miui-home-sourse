.class Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UserPresentLoadingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    invoke-static {p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->access$006(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    invoke-static {p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->access$100(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "Launcher.UserPresentAnimation"

    const-string v0, " Loading  animation  end !"

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    invoke-static {p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->access$100(Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;)Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$LoadingAnimationListener;->onAnimationFinish()V

    :cond_0
    return-void
.end method
