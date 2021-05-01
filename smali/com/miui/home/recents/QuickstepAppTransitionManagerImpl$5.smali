.class Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepAppTransitionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->startClosingWindowAnimators([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field final synthetic val$icon:Lcom/miui/home/launcher/ShortcutIcon;

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 1151
    iput-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAnimationEnd$537(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    const-string v0, "QuickstepAppTransitionManagerImpl"

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startClosingWindowAnimators, springAnim end, reset icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 1192
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimFinish()V

    .line 1193
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 1195
    :cond_0
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1196
    iget-object p2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p2}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSync(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onAnimationStart$536(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1402(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 1172
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1173
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    if-eqz p1, :cond_0

    .line 1174
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 1176
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    invoke-static {p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1400(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1210
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1185
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    const/4 v0, 0x0

    .line 1186
    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$502(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1187
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1188
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$qsC0Qqvl3a5CwYMkCt-xfLOHwA4;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$qsC0Qqvl3a5CwYMkCt-xfLOHwA4;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1200
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_1

    .line 1201
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimFinish()V

    .line 1202
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 1205
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/recents/util/TraceUtils;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "appToHomeAnim"

    .line 1154
    invoke-static {p1}, Lcom/miui/home/recents/util/TraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1155
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->mIsClosingAnimRunning:Z

    .line 1156
    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 1157
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1202(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F

    .line 1158
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$launcher:Lcom/miui/home/launcher/Launcher;

    .line 1159
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getMinusOneScreenView()Lcom/miui/home/launcher/MinusOneScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/MinusOneScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1158
    :goto_0
    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1302(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;F)F

    const-string p1, "QuickstepAppTransitionManagerImpl"

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startClosingWindowAnimators, springAnim start, hide icon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz p1, :cond_1

    .line 1162
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/LauncherIconImageView;->setAlpha(F)V

    .line 1163
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->onEnterHomeAnimStart()V

    .line 1166
    :cond_1
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/DimLayer;->createDimLayer()V

    .line 1168
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1169
    iget-object p1, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->this$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->access$1402(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/FloatingIconLayer;)Lcom/miui/home/recents/FloatingIconLayer;

    .line 1170
    sget-object p1, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;->val$icon:Lcom/miui/home/launcher/ShortcutIcon;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$6eLumjDvFR_UeFSxlG7HsrUcapE;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$5$6eLumjDvFR_UeFSxlG7HsrUcapE;-><init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$5;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
