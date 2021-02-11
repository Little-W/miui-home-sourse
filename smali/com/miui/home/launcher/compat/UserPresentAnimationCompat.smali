.class public abstract Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
.super Ljava/lang/Object;
.source "UserPresentAnimationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/UserPresentAnimationCompat$_lancet;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;


# instance fields
.field private mPrepareConsumer:Ljava8/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShowConsumer:Ljava8/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/miui/home/launcher/compat/-$$Lambda$N5lDION0XIjU7CDEat_1VBMgENk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/-$$Lambda$N5lDION0XIjU7CDEat_1VBMgENk;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mPrepareConsumer:Ljava8/util/function/Consumer;

    .line 44
    new-instance v0, Lcom/miui/home/launcher/compat/-$$Lambda$iXFmn63-8agErkAcF_PaAtlXYFQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/compat/-$$Lambda$iXFmn63-8agErkAcF_PaAtlXYFQ;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;)V

    iput-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mShowConsumer:Ljava8/util/function/Consumer;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;
    .locals 2

    .line 16
    const-class v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    if-nez v1, :cond_3

    .line 18
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_12:Z

    if-eqz v1, :cond_1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Spring;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    goto :goto_0

    .line 24
    :cond_1
    sget-boolean v1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_MIUI_11:Z

    if-eqz v1, :cond_2

    .line 25
    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV11;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    goto :goto_0

    .line 27
    :cond_2
    new-instance v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;

    invoke-direct {v1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV10;-><init>()V

    sput-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    .line 30
    :cond_3
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->sInstance:Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getPrepareConsumer()Ljava8/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mPrepareConsumer:Ljava8/util/function/Consumer;

    return-object v0
.end method

.method public final getShowConsumer()Ljava8/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/function/Consumer<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat;->mShowConsumer:Ljava8/util/function/Consumer;

    return-object v0
.end method

.method abstract prepareUserPresentAnimation(Landroid/view/View;)V
.end method

.method public resetView(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "Launcher.UserPresentAnimation"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alpha error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, "Launcher.UserPresentAnimation"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translationX error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "Launcher.UserPresentAnimation"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "translationY error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    const-string v0, "Launcher.UserPresentAnimation"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleX error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    const-string v0, "Launcher.UserPresentAnimation"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleY error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompat$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    return-void
.end method

.method abstract showUserPresentAnimation(Landroid/view/View;)V
.end method
