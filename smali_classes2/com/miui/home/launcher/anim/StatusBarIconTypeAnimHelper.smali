.class public final Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;
.super Ljava/lang/Object;
.source "StatusBarIconTypeAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarIconTypeAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarIconTypeAnimHelper.kt\ncom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper\n*L\n1#1,115:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

.field private static mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

.field private static mCurrentPackage:Ljava/lang/String;

.field private static final mFinishRunnable:Ljava/lang/Runnable;

.field private static mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

.field private static mIcon:Landroid/graphics/drawable/Icon;

.field private static mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    .line 20
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    .line 54
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$mFinishRunnable$1;

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMFloatingIconView$p(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;)Lcom/miui/home/recents/views/FloatingIconView;
    .locals 0

    .line 12
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-object p0
.end method

.method public static final synthetic access$setMFloatingIconView$p(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 0

    .line 12
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    return-void
.end method


# virtual methods
.method public final getMIcon()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 16
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public final getMRect()Landroid/graphics/Rect;
    .locals 0

    .line 17
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final isAnimFinished()Z
    .locals 1

    .line 104
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_FINISHED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimStatusStarted()Z
    .locals 1

    .line 87
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimStatusStartedForStatusBar()Z
    .locals 1

    .line 91
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED_FOR_SYSTEM_UI:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAnimating()Z
    .locals 1

    .line 100
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_UNDEFINED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNeedShowStatusBarTypeAnim(Lcom/miui/home/launcher/util/ClosingAppInfo;)Z
    .locals 4

    const-string p0, "appInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    .line 46
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_3

    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 49
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p0

    const-string v3, "GestureSoscController.getInstance()"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureSoscController;->isNormalMode()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 50
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedShowStatusBarTypeAnim:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " judgePackage="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/home/launcher/util/ClosingAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarIconTypeAnimHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final notifyAnimEndForStatusBar()V
    .locals 3

    .line 78
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    const-string v1, "SystemUiProxyWrapper.INSTANCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v0, :cond_0

    const-string v1, "StatusBarIconTypeAnimHelper"

    const-string v2, "notifyAnimEndForStatusBar"

    .line 80
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onFocusNotifyAnimEnd()V

    .line 82
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_END:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    :cond_0
    return-void
.end method

.method public final notifyAnimStartedForStatusBar()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimStatusStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    const-string v1, "SystemUiProxyWrapper.INSTANCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/SystemUiProxyWrapper;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onFocusNotifyAnimStart()V

    .line 72
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_STARTED_FOR_SYSTEM_UI:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    :cond_0
    return-void
.end method

.method public final onFocusNotifyAnimFinish()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->isAnimFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->ANIM_STATUS_FINISHED:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V

    .line 25
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    if-eqz p0, :cond_0

    .line 26
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$onFocusNotifyAnimFinish$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$onFocusNotifyAnimFinish$1$1;-><init>(Lcom/miui/home/recents/views/FloatingIconView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    sget-object p0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    const-string v0, "MAIN_THREAD_EXECUTOR"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V
    .locals 1

    .line 36
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mCurrentPackage:Ljava/lang/String;

    .line 37
    sput-object p2, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p3, :cond_0

    .line 39
    sget-object p0, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFocusedNotifUpdate pachage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " icon="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " rect:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarIconTypeAnimHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateAnimStatus(Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;)V
    .locals 1

    const-string p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAnimStatus ->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatusBarIconTypeAnimHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mAnimStatus:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper$AnimStatus;

    return-void
.end method

.method public final waitFinishFloatingIconView(Lcom/miui/home/recents/views/FloatingIconView;)V
    .locals 2

    const-string p0, "floatingIconView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "StatusBarIconTypeAnimHelper"

    const-string v0, "waitFinishFloatingIconView"

    .line 62
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFloatingIconView:Lcom/miui/home/recents/views/FloatingIconView;

    .line 64
    sget-object p0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    const-string p1, "MAIN_THREAD_EXECUTOR"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
