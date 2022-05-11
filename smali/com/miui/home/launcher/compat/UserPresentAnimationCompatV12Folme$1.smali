.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "UserPresentAnimationCompatV12Folme.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->showUserPresentAnimation(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    iget v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    iget p1, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    iget v0, v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfAnimatedView:I

    if-ne p1, v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    const/4 v0, 0x0

    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    .line 79
    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfAnimatedView:I

    const-string p1, "Launcher.UserPresentAnimation"

    const-string v0, "unlock_animation_cancel"

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    iget v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    iget p1, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    iget v0, v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfAnimatedView:I

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    const/4 v0, 0x0

    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfCurrentAnimatedView:I

    .line 68
    iput v0, p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->mNumOfAnimatedView:I

    const-string p1, "Launcher.UserPresentAnimation"

    const-string v0, "unlock_animation_complete"

    .line 69
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
