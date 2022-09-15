.class public Lcom/miui/home/launcher/common/BlurUtils;
.super Ljava/lang/Object;
.source "BlurUtils.java"


# static fields
.field public static DEFAULT_BLUR_ANIM_DURATION:J = 0xfaL

.field public static LONG_BLUR_ANIM_DURATION:J = 0x15eL

.field public static NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static RECENTS_BLUR_TYPE_COMPLETE:I = 0x2

.field public static RECENTS_BLUR_TYPE_NO:I = 0x0

.field public static RECENTS_BLUR_TYPE_SIMPLE:I = 0x1

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

.field private static sWindowBlurRatio:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/Window;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sWindowBlurRatio:Ljava/util/WeakHashMap;

    .line 302
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    .line 305
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "c77c94c20edf86a105433f4bc671d348"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "ee85a4dafbc7b06dc199d81b9719bb6d"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "e9c89c65810858c3c7fd7b34d0aa3e86"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "aa622d1829f3f68127c00e2df48320b5"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "1dc47431416c67a3a53be5779aa31308"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    .line 315
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cas"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string/jumbo v1, "umi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "lmi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "lmipro"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "crux"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    .line 328
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    const-string/jumbo v1, "venus"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_ON_DEV_DEVICE_LIST:Landroid/util/ArraySet;

    const-string v1, "apollo"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$002(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    sput-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private static blurByWindowManager(FLandroid/view/Window;)V
    .locals 3

    .line 181
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "blurRatio"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    .line 185
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 188
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 191
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 194
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatio:Ljava/lang/reflect/Field;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 196
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;FLjava/util/function/Consumer;)V

    .line 199
    :cond_2
    sput p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;
    .locals 2

    .line 93
    sget-wide v0, Lcom/miui/home/launcher/common/BlurUtils;->DEFAULT_BLUR_ANIM_DURATION:J

    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;ZJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static fastBlur(FLandroid/view/Window;ZJ)Landroid/animation/ValueAnimator;
    .locals 5

    const-string v0, "BlurUtils"

    .line 97
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

    .line 100
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-double v1, p0

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    move p0, v0

    .line 105
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
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

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->getCurrentBlurRatio()F

    move-result p2

    invoke-static {p1, p2, p0, p3, p4}, Lcom/miui/home/launcher/common/BlurUtils;->startBlurAnim(Landroid/view/Window;FFJ)V

    .line 115
    sget-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    return-object p0

    .line 117
    :cond_3
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    return-object v1
.end method

.method private static fastBlurDirectly(FLandroid/view/Window;)V
    .locals 3

    const-string v0, "BlurUtils"

    .line 160
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

    .line 162
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    .line 163
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 165
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->blurByWindowManager(FLandroid/view/Window;)V

    goto :goto_2

    .line 167
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 168
    sget-object v0, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$L4DiVcE5ePRLDQxVYC_c7UJmUn8;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 167
    :goto_1
    invoke-static {v1, p0, v0}, Lcom/miui/launcher/utils/BlurUtils;->setBlur(Ljava/lang/Object;FLjava/util/function/Consumer;)V

    .line 174
    sput p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F

    .line 176
    :goto_2
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/BlurUtils;->saveBlurRatioAfterAndroidS(Landroid/view/Window;F)V

    return-void
.end method

.method public static fastBlurWhenEnterMultiWindowMode(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 218
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 220
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public static fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 228
    iget-boolean p1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    .line 234
    iget-boolean p1, p1, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result p1

    if-nez p1, :cond_0

    .line 235
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenFinishOpenOrCloseApp(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 240
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
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

    .line 252
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenGestureResetTaskView(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    .line 246
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseNoRecentsBlurAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public static fastBlurWhenStartOpenOrCloseApp(ZLcom/miui/home/launcher/Launcher;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 206
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 211
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

    .line 258
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$d1ZkMVj4Q9X0OnqBW1Aqfd5nzxk;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$d1ZkMVj4Q9X0OnqBW1Aqfd5nzxk;-><init>(Lcom/miui/home/launcher/Launcher;FZ)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getBlurType()I
    .locals 2

    .line 338
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_NO:I

    return v0

    .line 341
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->USE_COMPLETE_BLUR_DEVICE_LIST:Landroid/util/ArraySet;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteBlurOnDev()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12_5:Z

    if-eqz v0, :cond_3

    .line 344
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_SIMPLE:I

    return v0

    .line 347
    :cond_2
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_COMPLETE:I

    return v0

    .line 349
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_NO:I

    return v0

    .line 352
    :cond_4
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->RECENTS_BLUR_TYPE_SIMPLE:I

    return v0
.end method

.method private static getCurrentBlurRatio()F
    .locals 2

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result v0

    return v0

    .line 127
    :cond_0
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurRatioValue:F

    return v0
.end method

.method private static getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isMinusUseBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result p0

    return p0

    .line 360
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

    .line 80
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getViewRootImpl"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/common/BlurUtils;->getViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 83
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

    .line 85
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v0
.end method

.method private static isUseCompleteBlurOnDev()Z
    .locals 2

    .line 333
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

    .line 294
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

    .line 286
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

    .line 298
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighLevelDeviceFromFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->NOT_SUPPORT_BLUR_WHEN_OPEN_FOLDER_DEVICE_LIST:Landroid/util/ArraySet;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$fastBlurDirectly$1(Ljava/lang/Float;)V
    .locals 1

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->updateLauncherBackgroundAlpha(F)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$fastBlurWhenUseCompleteRecentsBlur$2(Lcom/miui/home/launcher/Launcher;FZ)V
    .locals 1

    .line 259
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method static synthetic lambda$resetBlur$4(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method static synthetic lambda$resetBlurWhenUseCompleteRecentsBlur$3(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtils;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 268
    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtils;->getLauncherBlur(Lcom/miui/home/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method static synthetic lambda$startBlurAnim$0(FFLandroid/view/Window;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 143
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    .line 144
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 145
    sget v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    cmpl-float p0, p3, p0

    if-nez p0, :cond_1

    :cond_0
    cmpl-float p0, p3, p1

    if-nez p0, :cond_2

    .line 146
    :cond_1
    invoke-static {p3, p2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    :cond_2
    return-void
.end method

.method public static resetBlur(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    .line 274
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$RpVZnkhCM5p6OgDXa1TxANtfoEI;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$RpVZnkhCM5p6OgDXa1TxANtfoEI;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 2

    .line 266
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$ivj6KliFKgZ2cex-jUvin1lETn4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$ivj6KliFKgZ2cex-jUvin1lETn4;-><init>(Lcom/miui/home/launcher/Launcher;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static restoreBlurRatioAfterAndroidS(Landroid/view/Window;)V
    .locals 4

    .line 55
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sWindowBlurRatio:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "BlurUtils"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore blur ratio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    return-void
.end method

.method private static saveBlurRatioAfterAndroidS(Landroid/view/Window;F)V
    .locals 3

    .line 69
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BlurUtils"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save blur ratio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " for window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sWindowBlurRatio:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setMinusOneBlurRatio(F)V
    .locals 0

    .line 282
    sput p0, Lcom/miui/home/launcher/common/BlurUtils;->sMinusOneBlurRatio:F

    return-void
.end method

.method private static startBlurAnim(Landroid/view/Window;FFJ)V
    .locals 4

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    .line 132
    invoke-static {p1, p0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurDirectly(FLandroid/view/Window;)V

    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    .line 138
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

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    long-to-float p3, p3

    mul-float/2addr v0, p3

    float-to-long p3, v0

    .line 140
    sget-object v0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 141
    sget-object p3, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 142
    sget-object p3, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    new-instance p4, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$QRFQ8Be28Z_oS-Lg2p-sJ4OUDss;

    invoke-direct {p4, p1, p2, p0}, Lcom/miui/home/launcher/common/-$$Lambda$BlurUtils$QRFQ8Be28Z_oS-Lg2p-sJ4OUDss;-><init>(FFLandroid/view/Window;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    sget-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/miui/home/launcher/common/BlurUtils$1;

    invoke-direct {p1}, Lcom/miui/home/launcher/common/BlurUtils$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 155
    sput v2, Lcom/miui/home/launcher/common/BlurUtils;->sBlurCount:I

    .line 156
    sget-object p0, Lcom/miui/home/launcher/common/BlurUtils;->sBlurAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
