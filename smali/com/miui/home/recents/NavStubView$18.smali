.class Lcom/miui/home/recents/NavStubView$18;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/NavStubView;->startAppToHomeAnim(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCancel:Z

.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;

.field final synthetic val$floatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field final synthetic val$icon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 2455
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p3, p0, Lcom/miui/home/recents/NavStubView$18;->val$floatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 2477
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$18;->val$floatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz v0, :cond_0

    .line 2478
    invoke-virtual {v0}, Lcom/miui/home/recents/views/FloatingIconView;->forceToEnd()V

    .line 2480
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView$18;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    const/4 p1, 0x1

    .line 2481
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView$18;->isCancel:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    .line 2486
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView$18;->isCancel:Z

    if-eqz p1, :cond_0

    return-void

    .line 2489
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2490
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->finishAppToHome()V

    .line 2491
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2492
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setIsFsAppToHomeAnimating(Z)V

    .line 2493
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setClipChildren(Z)V

    .line 2496
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_2

    .line 2497
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setTranslationZ(F)V

    .line 2498
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimFinish()V

    .line 2502
    :cond_2
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 3

    const-string p1, "appToHomeAnimFromGesture"

    .line 2460
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 2461
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView;->access$5802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 2462
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_0

    .line 2463
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTranslationZ()F

    move-result p1

    invoke-static {v1, p1}, Lcom/miui/home/recents/NavStubView;->access$5902(Lcom/miui/home/recents/NavStubView;F)F

    .line 2464
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$5900(Lcom/miui/home/recents/NavStubView;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setTranslationZ(F)V

    .line 2465
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 2466
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimStart()V

    .line 2468
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2469
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsContainer;->setIsFsAppToHomeAnimating(Z)V

    .line 2471
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView$18;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p1}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setClipChildren(Z)V

    :cond_1
    return-void
.end method
