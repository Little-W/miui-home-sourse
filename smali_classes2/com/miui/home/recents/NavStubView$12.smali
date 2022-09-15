.class Lcom/miui/home/recents/NavStubView$12;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToHomeInMainThread(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;FLandroid/graphics/Rect;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$floatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field final synthetic val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 3184
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p3, p0, Lcom/miui/home/recents/NavStubView$12;->val$floatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnimationCancel$0(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3205
    invoke-virtual {p0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 3

    .line 3203
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$floatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$12$LtjhFeCwPKG7POhd2yS87QPrLk4;

    invoke-direct {v2, v1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$12$LtjhFeCwPKG7POhd2yS87QPrLk4;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3208
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startAppToHomeInMainThread mAppToHomeAnim2 cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$12;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    const/4 p1, 0x1

    .line 3210
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$12;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 3215
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$12;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 3219
    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "startAppToHomeInMainThread mAppToHomeAnim2 end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 3221
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_1

    .line 3222
    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimFinish()V

    .line 3227
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    const-string p1, "appToHomeAnimFromGesture"

    .line 3189
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 3190
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5300(Lcom/miui/home/recents/NavStubView;Z)V

    .line 3191
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAppToHomeInMainThread mAppToHomeAnim2 start, icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz p1, :cond_1

    .line 3193
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$5500(Lcom/miui/home/recents/NavStubView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3194
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3196
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3197
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$12;->val$icon:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-interface {p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->onEnterHomeAnimStart()V

    :cond_1
    return-void
.end method
