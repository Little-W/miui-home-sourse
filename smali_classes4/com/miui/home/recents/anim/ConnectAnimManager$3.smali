.class Lcom/miui/home/recents/anim/ConnectAnimManager$3;
.super Ljava/lang/Object;
.source "ConnectAnimManager.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/ConnectAnimManager;->connectRemoteAnim(Lcom/miui/home/recents/util/RectFSpringAnim;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/ConnectAnimManager;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resetIcon()V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetIcon mFromRecent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectAnimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$300(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$300(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedRecycle(Z)V

    .line 281
    iget-object v0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/FloatingIconView;->setNeedResetShortcutIcon(Z)V

    .line 282
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$400(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->finishImmediately()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->resetIcon()V

    const-string p0, "ConnectAnimManager"

    const-string p1, "RectFSpringAnimListener onAnimationCancel"

    .line 271
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    const-string p1, "ConnectAnimManager"

    const-string v0, "RectFSpringAnimListener onAnimationEnd"

    .line 289
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$100(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->setConnectAnimRunning(Z)V

    .line 291
    invoke-direct {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->resetIcon()V

    .line 292
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz p1, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$100(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/RemoteAnimationFinishCallbackManager;->executeFinishCallback()V

    .line 296
    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$200(Lcom/miui/home/recents/anim/ConnectAnimManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$500(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 297
    iget-object p0, p0, Lcom/miui/home/recents/anim/ConnectAnimManager$3;->this$0:Lcom/miui/home/recents/anim/ConnectAnimManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->access$500(Lcom/miui/home/recents/anim/ConnectAnimManager;)Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->release()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    const-string p0, "ConnectAnimManager"

    const-string p1, "RectFSpringAnimListener onAnimationStart"

    .line 265
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
