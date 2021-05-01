.class public Lcom/miui/home/launcher/common/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static DEFAULT_BLUR_ANIM_DURATION:J = 0xfaL

.field public static LONG_BLUR_ANIM_DURATION:J = 0x15eL

.field public static RECENTS_BLUR_TYPE_COMPLETE:I = 0x2

.field public static RECENTS_BLUR_TYPE_NO:I = 0x0

.field public static RECENTS_BLUR_TYPE_SIMPLE:I = 0x1

.field public static USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getViewRootImplMethod:Ljava/lang/reflect/Method;

.field private static sBlurAnim:Landroid/animation/ValueAnimator;

.field private static sBlurCount:I

.field private static sBlurRatio:Ljava/lang/reflect/Field;

.field private static sBlurRatioValue:F

.field private static sMinusOneBlurRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 261
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    .line 264
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cas"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "umi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "lmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "lmipro"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "venus"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "apollo"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    .line 276
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cas"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "umi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "lmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "lmipro"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "crux"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    .line 289
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "venus"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "apollo"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 25
    sput-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private static blurByWindowManager(FLandroid/view/Window;)V
    .locals 3

    .line 150
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "blurRatio"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    .line 154
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 157
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 159
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 161
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 163
    sput p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F

    .line 164
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;
    .locals 2

    .line 67
    sget-wide v0, Lcom/miui/home/launcher/common/BlurUtils;->DEFAULT_BLUR_ANIM_DURATION:J

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;ZJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static fastBlur(FLandroid/view/Window;ZJ)Landroid/animation/ValueAnimator;
    .locals 3

    const-string v0, "BlurUtils"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastBlur ratio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   withAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   sBlurRatioValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 74
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    .line 79
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 83
    :cond_1
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F

    cmpl-float v0, v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sMinusOneBlurRatio:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->getCurrentBlurRatio()F

    move-result p2

    invoke-static {p1, p2, p0, p3, p4}, Lcom/miui/home/launcher/common/BlurUtils;->startBlurAnim(Landroid/view/Window;FFJ)V

    .line 89
    sget-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    return-object p0

    .line 91
    :cond_3
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    return-object v1
.end method

.method private static fastBlurDirectly(FLandroid/view/Window;)V
    .locals 3

    const-string v0, "BlurUtils"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fastBlurDirectly ratio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    .line 136
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;F)V

    .line 141
    sput p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "BlurUtils"

    const-string v0, "fastBlur"

    .line 143
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->blurByWindowManager(FLandroid/view/Window;)V

    :goto_1
    return-void
.end method

.method public static fastBlurWhenEnterMultiWindowMode(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 185
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public static fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 195
    iget-boolean p1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public static fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 2

    .line 201
    iget-boolean p1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez p1, :cond_1

    .line 202
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 203
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-wide v0, Lcom/miui/home/launcher/common/BlurUtils;->LONG_BLUR_ANIM_DURATION:J

    .line 202
    invoke-static {p1, p0, p2, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;ZJ)Landroid/animation/ValueAnimator;

    :cond_1
    return-void
.end method

.method public static fastBlurWhenFinishOpenOrCloseApp(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 208
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenGestureAppModeStart(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenGestureResetTaskView(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    .line 214
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenStartOpenOrCloseApp(ZLcom/miui/home/launcher/Launcher;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 173
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 178
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V
    .locals 2

    .line 226
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$BSHrKM5JxPp8qI_xppl28DeVycM;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$BSHrKM5JxPp8qI_xppl28DeVycM;-><init>(Lcom/miui/home/launcher/Launcher;FZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getBlurType()I
    .locals 2

    .line 299
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_NO:I

    return v0

    .line 302
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteBlurOnDev()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    if-eqz v0, :cond_2

    .line 305
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_COMPLETE:I

    return v0

    .line 306
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_NO:I

    return v0

    .line 309
    :cond_3
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_SIMPLE:I

    return v0
.end method

.method private static getCurrentBlurRatio()F
    .locals 2

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result v0

    return v0

    .line 101
    :cond_0
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F

    return v0
.end method

.method private static getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusUseBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result p0

    return p0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 54
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getViewRootImpl"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 57
    :cond_0
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImplMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "BlurUtils"

    const-string v1, "get ViewRootImpl failed"

    .line 59
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v0
.end method

.method private static isUseCompleteBlurOnDev()Z
    .locals 2

    .line 294
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUseCompleteRecentsBlurAnimation()Z
    .locals 2

    .line 254
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->getBlurType()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_COMPLETE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUseNoRecentsBlurAnimation()Z
    .locals 2

    .line 246
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->getBlurType()I

    move-result v0

    sget v1, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_NO:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUserBlurWhenOpenFolder()Z
    .locals 2

    .line 258
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$fastBlurWhenUseCompleteRecentsBlur$487(Lcom/miui/home/launcher/Launcher;FZ)V
    .locals 1

    .line 227
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method static synthetic lambda$resetBlurWhenUseCompleteRecentsBlur$488(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    .line 235
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 236
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method static synthetic lambda$startBlurAnim$486(FFLandroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 117
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    .line 118
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 119
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    cmpl-float p0, p3, p0

    if-nez p0, :cond_1

    :cond_0
    cmpl-float p0, p3, p1

    if-nez p0, :cond_2

    .line 120
    :cond_1
    invoke-static {p3, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    :cond_2
    return-void
.end method

.method public static resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    .line 234
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$zGBSR6rRAqzc5DEiHk8UJpELcas;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$zGBSR6rRAqzc5DEiHk8UJpELcas;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMinusOneBlurRatio(F)V
    .locals 0

    .line 242
    sput p0, Lcom/miui/home/launcher/common/BlurUtils;->sMinusOneBlurRatio:F

    return-void
.end method

.method private static startBlurAnim(Landroid/view/Window;FFJ)V
    .locals 4

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    .line 106
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    .line 112
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v3, 0x1

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sub-float v0, p1, p2

    .line 113
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    long-to-float p3, p3

    mul-float/2addr v0, p3

    float-to-long p3, v0

    .line 114
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 115
    sget-object p3, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 116
    sget-object p3, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;

    invoke-direct {p4, p1, p2, p0}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$SgDGahzJVCuz0IGMgrsFHpoh0GI;-><init>(FFLandroid/view/Window;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    sget-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/miui/home/launcher/common/BlurUtils$1;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/BlurUtils$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 129
    sput v2, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    .line 130
    sget-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
