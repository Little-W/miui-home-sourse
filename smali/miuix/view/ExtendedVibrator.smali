.class Lmiuix/view/ExtendedVibrator;
.super Ljava/lang/Object;
.source "ExtendedVibrator.java"

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/ExtendedVibrator$_lancet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedVibrator"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    invoke-static {}, Lmiuix/view/ExtendedVibrator;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static initialize()V
    .locals 2

    .line 30
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    if-gez v0, :cond_0

    const-string v0, "ExtendedVibrator"

    const-string v1, "MiuiHapticFeedbackConstants not found."

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    new-instance v0, Lmiuix/view/ExtendedVibrator;

    invoke-direct {v0}, Lmiuix/view/ExtendedVibrator;-><init>()V

    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    const-string v0, "ExtendedVibrator"

    const-string v1, "setup ExtendedVibrator success."

    .line 35
    invoke-static {v0, v1}, Lmiuix/view/ExtendedVibrator$_lancet;->com_miui_home_launcher_aop_LogHooker_ai(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public performHapticFeedback(Landroid/view/View;I)Z
    .locals 1

    .line 19
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
