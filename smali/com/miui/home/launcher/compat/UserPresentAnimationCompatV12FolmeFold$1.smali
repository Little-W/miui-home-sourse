.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "UserPresentAnimationCompatV12FolmeFold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->addFolmeAnimListener(Lmiuix/animation/IStateStyle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;Landroid/view/View;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;

    iput-object p2, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 224
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 225
    iget-object p1, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;->this$0:Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;

    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12FolmeFold;->cleanView(Landroid/view/View;)V

    return-void
.end method
