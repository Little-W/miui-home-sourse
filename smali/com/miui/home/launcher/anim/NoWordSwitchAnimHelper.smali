.class public final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoWordSwitchAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoWordSwitchAnimHelper.kt\ncom/miui/home/launcher/anim/NoWordSwitchAnimHelper\n*L\n1#1,225:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

.field private static isCheckAppearAnimConfig:Z

.field private static mAnimEndAction:Ljava/lang/Runnable;

.field private static final mAnimListener:Lmiuix/animation/listener/TransitionListener;

.field private static final mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private static final mCellScreenObserver:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

.field private static final mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private static mScheduledWorkspaceDisappearAnim:Z

.field private static mShouldScheduleAppearAnim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    .line 45
    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mAnimListener$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mAnimListener$1;-><init>()V

    check-cast v0, Lmiuix/animation/listener/TransitionListener;

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    .line 68
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    .line 69
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    .line 68
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v2, 0x1

    new-array v4, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 71
    sget-object v5, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 73
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 74
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 73
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v1, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 76
    sget-object v2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimListener:Lmiuix/animation/listener/TransitionListener;

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 83
    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mCellScreenObserver:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$doSwitchAnim(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Landroid/view/View;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->doSwitchAnim(Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic access$getMAnimEndAction$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 33
    sget-object p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getMScheduledWorkspaceDisappearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;)Z
    .locals 0

    .line 33
    sget-boolean p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    return p0
.end method

.method public static final synthetic access$setMAnimEndAction$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Ljava/lang/Runnable;)V
    .locals 0

    .line 33
    sput-object p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAnimEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setMScheduledWorkspaceDisappearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Z)V
    .locals 0

    .line 33
    sput-boolean p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    return-void
.end method

.method public static final synthetic access$setMShouldScheduleAppearAnim$p(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Z)V
    .locals 0

    .line 33
    sput-boolean p1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    return-void
.end method

.method private final doSwitchAnim(Landroid/view/View;Z)V
    .locals 7

    .line 210
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 211
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    .line 212
    new-array v6, v5, [J

    .line 210
    invoke-virtual {v0, v1, v4, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 214
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 215
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-eqz p2, :cond_1

    move v2, v3

    .line 216
    :cond_1
    new-array v3, v5, [J

    .line 214
    invoke-virtual {v1, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v2, 0x1

    .line 219
    new-array v3, v2, [Landroid/view/View;

    aput-object p1, v3, v5

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 221
    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    if-eqz p2, :cond_2

    .line 222
    sget-object p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mDisappearAnimConfig:Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mAppearAnimConfig:Lmiuix/animation/base/AnimConfig;

    :goto_1
    aput-object p2, v2, v5

    .line 219
    invoke-interface {p1, v0, v1, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public final onLauncherFinishLoading()V
    .locals 3

    .line 177
    sget-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 181
    new-instance v2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherFinishLoading$1$1;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherFinishLoading$1$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 188
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getAlpha()F

    move-result v2

    cmpg-float v1, v2, v1

    if-eqz v1, :cond_1

    .line 190
    new-instance v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherFinishLoading$2$1;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherFinishLoading$2$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 197
    sput-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->isCheckAppearAnimConfig:Z

    .line 198
    sput-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    .line 199
    sput-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    .line 200
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/CellScreen;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 201
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->setSwitchingNoWordModel(Z)V

    const-string v0, "NoWordSwitchAnimHelper"

    const-string v1, "onLauncherFinishLoading"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLauncherStartLoading()V
    .locals 3

    .line 141
    sget-object v0, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->INSTANCE:Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/noword/NoWordSettingHelper;->getSwitchingNoWordModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 144
    new-instance v2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$1$1;

    invoke-direct {v2, v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$1$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->getAlpha()F

    move-result v2

    cmpg-float v1, v2, v1

    if-eqz v1, :cond_1

    .line 152
    new-instance v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$2$1;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$onLauncherStartLoading$2$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_1
    sget-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->isCheckAppearAnimConfig:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 160
    sput-boolean v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->isCheckAppearAnimConfig:Z

    const-string v0, "NoWordSwitchAnimHelper"

    const-string v1, "onLauncherStartLoading"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    sget-boolean v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellScreen()Lcom/miui/home/launcher/CellScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->getCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    sget-object v1, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mCellScreenObserver:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;

    check-cast v1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 164
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_2
    return-void
.end method

.method public final startSwitchNoWordAnim(Ljava/lang/Runnable;ZZ)V
    .locals 1

    const-string v0, "animEndAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 108
    new-instance v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$$inlined$let$lambda$1;-><init>(Lcom/miui/home/launcher/Workspace;Ljava/lang/Runnable;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 118
    sput-boolean p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mScheduledWorkspaceDisappearAnim:Z

    .line 119
    sput-boolean p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->mShouldScheduleAppearAnim:Z

    .line 120
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 121
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 122
    new-instance p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$2$1;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$2$1;-><init>(Lcom/miui/home/launcher/Workspace;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 128
    new-instance p2, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$3$1;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$startSwitchNoWordAnim$3$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeats;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeats;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method
