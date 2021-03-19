.class Lcom/miui/home/recents/NavStubView$11;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToHomeInGestureThread(Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$icon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 2512
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$1(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2544
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, p1}, Lcom/miui/home/recents/NavStubView;->access$4200(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 2545
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimFinish()V

    .line 2548
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v0, :cond_1

    .line 2549
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSync(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$onAnimationStart$0(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 2521
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 2522
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    .line 2529
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$11;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    const/4 p1, 0x1

    .line 2530
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$11;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 2535
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$11;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 2539
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;Z)V

    .line 2540
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 2542
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$smxnqjzgH1tYw8ZQW_n1AfFtt6Y;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$smxnqjzgH1tYw8ZQW_n1AfFtt6Y;-><init>(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2555
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    const-string p1, "appToHomeAnimFromGesture"

    .line 2517
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 2518
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$11;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$4100(Lcom/miui/home/recents/NavStubView;Z)V

    .line 2519
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$11;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$DJStntAKez3RO_P_l-xOwx5AUsM;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$DJStntAKez3RO_P_l-xOwx5AUsM;-><init>(Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
